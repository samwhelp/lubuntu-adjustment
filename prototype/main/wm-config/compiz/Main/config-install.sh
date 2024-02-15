#!/usr/bin/env bash

set -e


################################################################################
### Head: compiz
##

compiz_config_run_pre () {

	compiz_service_stop


	return 0

}

compiz_config_run_post () {

	compiz_service_start


	return 0

}

compiz_service_stop () {

	#compiz_service_stop_compiz_globalkeysd

	#compiz_service_stop_compiz_panel

	#compiz_service_stop_pcmanfm_qt

	#compiz_service_stop_xfconfd

	#compiz_service_stop_xfsettingsd


	return 0

}

compiz_service_stop_compiz_globalkeysd () {

	if killall -9 compiz-globalkeysd; then
		return 0
	fi


	return 0

}

compiz_service_stop_compiz_panel () {

	if killall -9 compiz-panel; then
		return 0
	fi


	return 0

}

compiz_service_stop_pcmanfm_qt () {

	if killall -9 pcmanfm-qt; then
		return 0
	fi


	return 0

}

compiz_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

compiz_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

compiz_service_start () {


	return 0

}

compiz_config_install () {

	echo
	echo "##"
	echo "## Config: compiz"
	echo "##"
	echo


	compiz_config_install_by_dir


	echo

}

compiz_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: compiz
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	compiz_config_run_pre

	compiz_config_install

	compiz_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
