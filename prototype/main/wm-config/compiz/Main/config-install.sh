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

	compiz_gsettings_config

	return 0

}

compiz_service_stop () {

	#compiz_service_stop_pcmanfm_qt


	return 0

}


compiz_service_stop_pcmanfm_qt () {

	if killall -9 pcmanfm-qt; then
		return 0
	fi


	return 0

}

compiz_service_start () {


	return 0

}

compiz_gsettings_config () {

	echo gsettings set org.gnome.desktop.wm.preferences theme 'Numix'
	gsettings set org.gnome.desktop.wm.preferences theme 'Numix'

	#echo gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:close'
	#gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:close'

	echo gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
	gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

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
