#   ngspice raw file handler
#   Copyright (C) 2014  Zhou Ming
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software Foundation,
#   Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA

from datetime import datetime
import numpy as np

class NGSpiceRaw(object):
    """
    This class reads ngspice raw file and converts vector to numpy array
    and others to python native data.
    """
    def __init__(self, filename):
        self.set_default()
        self.filename = filename

    def set_default(self):
        """
        Set all variables to default value.
        """
        self.number_variables = 0
        self.number_points = 0
        self.number_dimesions = 0
        self.padded = True
        self.real = True
        self.header_fixed = ( # refer to ngspice v26 src/frontend/rawfile.c
            ['Title', None],
            ['Date', None],
            ['Plotname', None],
            ['Flags', None],
            ['No. Variables', None],
            ['No. Points', None],
        )
        self.header_optional = (
            'Dimensions',
            'Command',
            'Option',
        )

    def _parse_fixed_header(self, f):
        """
        parse and consume the fixed header of ngspice raw file. For example:

        Title: * gnetlist : -g spice-sdb -o spice.net lna5g.sch
        Date: Sun Mar 23 14:24:41  2014
        Plotname: Noise Spectral Density Curves - (V^2 or A^2)/Hz
        Flags: real
        No. Variables: 3
        No. Points: 49
        """
        for i in range(len(self.header_fixed)):
            line = f.readline()
            name, value = line.split(':', 1)
            header = self.header_fixed[i]
            if header[0] != name:
                raise ValueError("Expect %s but got %s"%(header[0], name))
            value = value.strip('\n')
            value = value.strip()
            if i == 1:
                header[1] = datetime.strptime(value, '%a %b %d %H:%M:%S %Y')
            elif i in (4, 5):
                header[1] = int(value)
            else:
                header[1] = value

    def _parse_optional_header(self, f):
        """
        parse and consume the optional header of ngspice raw file.
        Not implemented yet.
        """
        while f.readline() != 'Variables:\n':
            pass

    def _parse_varialbles(self, f):
        """
        parse and consume the variables section of ngspice raw file.
        """
        number_variables = self.header_fixed[4][1]
        for i in range(number_variables):
            line = f.readline().split()
            name = line[1]
            type_name = line[2]

    def _parse_binary_or_values(self, f):
        """
        parse and consume the binary/values section of ngspice raw file.
        """
        flags = self.header_fixed[3][1]
        real_n_complex = 'real' in flags
        number_variables = self.header_fixed[4][1]
        number_points = self.header_fixed[5][1]
        number_records = number_variables * number_points
        if real_n_complex:
            number_bytes = number_records * np.nbytes[np.float64]
        else:
            number_bytes = number_records * np.nbytes[np.complex128]
        line = f.readline()
        if line == 'Binary:\n':
            if real_n_complex:
                flat = np.frombuffer(f.read(number_bytes), dtype="float64")
            else:
                flat = np.frombuffer(f.read(number_bytes), dtype="complex128")
        elif line == "Values:\n":
            if real_n_complex:
                flat = np.zeros(number_records, dtype="float64")
                for i in range(number_records):
                    flat[i] = np.float(f.readline().split('\t')[1])
            else:
                flat = np.zeros(number_records, dtype="complex128")
                for i in range(number_records):
                    real, image = f.readline().split('\t')[1].split(',')
                    flat[i] = np.complex(np.float(real), np.float(image))
        else:
            raise ValueError("%s not supported"%line)
        self.data_array = flat.reshape(number_points, number_variables)

    def load(self, filename=None):
        """
        Convert ngspice raw file to numpy array. Result will be stored in
        self.data_array
        """
        if filename:
            self.filename = filename
        f = open(self.filename, "rb")
        self._parse_fixed_header(f)
        self._parse_optional_header(f)
        self._parse_varialbles(f)
        self._parse_binary_or_values(f)
        f.close()

    def __repr__(self):
        return str(self.header_fixed)

