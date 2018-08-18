#!/bin/sh

	user=$1
	echo "100000"
	account_flag=`curl  -d  account_number=$1 -d 'password=' https://api.funjsq.com/funjsq/checkisUser.php -k -s`

	[ "$account_flag" == ""  ] && exit
	[ "$account_flag" == "4"  ] && {
		echo "100001"
		sleep 6
		rm -rf funjsq_install.sh

		exit
	}

	cd /tmp

	mkdir /tmp/funjsq   >/dev/null 2>&1

	rm -rf /koolshare/funjsq  >/dev/null 2>&1

	if [ -d /koolshare ]; then

		productid=`nvram get productid`


		#echo "您的路由器是 $productid."

		case $productid in
		RT-AC66U)
			curl -s -k https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_mips.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-N66U)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_mips.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC66U-B1)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm_RT-AC66U-B1.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC56U)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC56R)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC87U)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC3200)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC68U)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC86U)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm_ac86u.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		GT-AC5300)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm_ac86u.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC88U)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC3100)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		RT-AC5300)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		R7000)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		R6300V2)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		R6400)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		R6900)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		R8000)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		R8500)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		EA6200)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		EA6400)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		EA6700)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		EA6500V2)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		EA6900)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		WRT1900AC)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		WS880)
			curl -s -k  https://static.funjsq.com/web_control/merlin/funjsq_plugin_merlin_arm.tar.gz -o /tmp/funjsq/funjsq_plugin.tar.gz
			;;
		*)
			echo "100005"
			rm -rf /tmp/funjsq
			rm -rf funjsq_install.sh
			exit
			;;
		esac

		tar -zxvf /tmp/funjsq/funjsq_plugin.tar.gz -C / >/dev/null 2>&1


	/koolshare/funjsq/bin/funjsq.sh install $1>/dev/null 2>&1 &


	echo "100002"
	sleep 2
	echo "100002"
	sleep 2
	echo "100002"
	sleep 4
	echo "100002"
	sleep 2

	#install_flag=`ps | grep funjsq| grep -v grep|wc -l`
	install_flag=`cat /koolshare/funjsq/web_control_userid | wc -c`
	if [ "$install_flag" == "17" ]; then
		echo "100003"
	else
		echo "100004"
	fi


	rm -rf /tmp/funjsq


	rm -rf funjsq_install.sh
	else
		echo "100006"
		rm -rf funjsq_install.sh
	fi
