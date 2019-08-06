#!/bin/bash

#This script contains two functions#
#Script will be sourced in script source_files.bash

#function to create a file
function create_file () {
	local FNAME="${1}"
	touch $FNAME
	ls $FNAME
}

#function to delete a file
function delete_file () {
	local FNAME="${1}"
	rm $FNAME
	ls $FNAME
}

