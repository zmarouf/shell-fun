#!/bin/sh
##
## test.sh
## Login : <zmarouf@Zeids-MacBook-Pro.local>
## Started on  Thu May  8 17:30:01 2014 Zeid Marouf
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

# Example of history expansion inside a script (shouldn't be used but fun :D)

echo "So you're typing long commands and you don't feel like retyping arguments? Try these:"
echo "\t!x where x is the command number in the history file"
echo "\t!-x where x is the command number in the list of previously executed commands in LIFO"
echo "\t!^ where ^ is the first argument of the previous command"
echo "\t!$ where $ is the last argument of the previous command"
echo "\t!* where * globs all the arguments of the previous command"

echo 'echo  1 2 3 4' # first command (echoed to screen)
echo 'echo !:2 && echo !:3 && echo !* && echo !$'

set -o history # activating history (won't work in a pure zsh script)
set -o histexpand # activating expansion

echo 1 2 3 4
echo !:2 && echo !:3 && echo !* && echo !$
