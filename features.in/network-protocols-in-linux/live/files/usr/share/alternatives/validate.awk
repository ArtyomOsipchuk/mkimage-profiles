#
# Copyright (c) 2003,2004 ALT Linux Ltd.
# Copyright (c) 2003,2004 Stanislav Ievlev <inger@altlinux.org>
#
# list.awk - helper script to calculate current alternatives state
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307,
# USA.
#

BEGIN { m_count = 0 }

{ 
  errors = 0
  message = ""
  
  if (NF != 3) {
    print $0
    print "fatal: wrong number of fields"
    exit 1
 }
  
  if ($1 == $2) {
    message = message "alternative name = candidate name\n"
    errors = 1
  }
  
  if ($2 == $3) {
    message = message "slave candidate name = master candidate name\n"
    errors = 1
  }

  if (substr($1, 1, 1) != "/" || substr($2, 1, 1) != "/") {
    message = message "you cannot use relative path\n"
    errors = 1
  }

  if (substr($3, 1, 1) == "/") {
    # slave alternative
    #check for the same name in masters
    for (val in masters) {
      if (masters[val] == $1) {
        errors = 1
        message = message "this alternative has already been registered as a master\n"
        break
      }
    }

    if (!targets[$3]) {
      errors = 1
      message = message "slave alternative " $1 " references unknown master candidate " $3 "\n"
    }

    #check for the cycle in the deps
    element = $3
    while (parents[element]) {
      element = parents[element]

      if (element == $2) {
        message = message "deps cycle was detected on element " $2 "\n"
        errors = 1
        break
      }
    }
    parents[$2] = $3
  } else {
    # master alternative
    masters[m_count++] = $1
    targets[$2] = 1
  }

  if (errors  == 1) {
    print $0
    print FILENAME " errors:\n" message
    exit 1
  }
}
