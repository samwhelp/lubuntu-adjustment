#!/usr/bin/env bash

set -e


################################################################################
### Head: compiz
##

compiz_asset_install () {

	echo
	echo "##"
	echo "## Asset: compiz"
	echo "##"
	echo

	echo "## Do Nothing"


	echo

}



##
### Tail: compiz
################################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	compiz_asset_install

}

##
### Tail: asset_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_asset_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
