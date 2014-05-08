#!/bin/bash
##
## process_substitution.sh
## Login : <zmarouf@Zeids-MacBook-Pro.local>
## Started on  Thu May  8 17:42:21 2014 Zeid Marouf
## $Id$
##
## Author(s):
##  - Zeid Marouf <>
##
## Copyright (C) 2014 Zeid Marouf
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
##

echo "Diff works on files only so how would we got about using it on command output instead? Like this:"
echo 'diff <(echo "this is a string") <(echo "this is another string")'
set -x
diff <(echo "this is a string") <(echo "this is another string")
