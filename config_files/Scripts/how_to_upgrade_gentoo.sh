#!/bin/bash

#1.sync portage tree to lastest
emerge --sync
#2.upgrade the system
emerge -avutDN --with-bdeps=y @world # -a = --ask, -v = --vebose, -u = --update, -t == --tree, -D = --deep, -N = --newuse
#3.may be need to update the new config file
dispatch-conf # or etc-update
#4.clean the unused package
emerge -avc # -c = --depclean
#5.rebuild dependency library
emerge @preserved-rebuild
revdep-rebuild
#6.clean old distfiles
eclean -d distfiles # or eclean-dist -d
