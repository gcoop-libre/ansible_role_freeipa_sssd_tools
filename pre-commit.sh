#!/bin/bash

# This script comes with ABSOLUTELY NO WARRANTY, use at own risk
# Copyright (C) 2020 Osiris Alejandro Gomez <osiris@gcoop.coop>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

die()                                                                   
{                                                                       
  echo "$BIN [ERRR] $1"                                                 
  exit 1                                                                
} 

REPO="$1"
[[ -z "$1" ]] && die "empty repository for ansible-lint"

YAML=$(cat << EOF
repos:
  - repo: $REPO
    rev: v4.2.0
    hooks:
    - id: ansible-lint
      files: \.(yaml|yml)$
EOF
)

command -v pre-commit || die "try pip install pre-commit"

echo "$YAML" > .pre-commit-config.yaml

pre-commit install
