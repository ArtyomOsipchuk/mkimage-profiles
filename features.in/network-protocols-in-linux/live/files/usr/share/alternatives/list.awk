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

/ignore$/ { ignore[$1]=1; } #add to ignore list

{ 
  if (substr($3,1,1) == "/")
  { # slave alternative
	if (values[$1] != "manual") # may be locked child
	{ #try search for father
	    for (val in names)
		if (names[val] == $3)
		{# my father was found, so is a maximum
		    names[$1]=$2;
		    break;
		} 
	}
  }
  else
  { # master alternative
    if (!ignore[$2] && (values[$1]!="manual") && ($3 > values[$1]))
    {
	values[$1]=$3;
	names[$1]=$2;
    }
  }
}

END {
    OFS="\t";
    for ( val in names ) print val,names[val];
}
