#!/bin/bash
wifi_onloop () {
	while n=0;do
	nmcli radio wifi on 
	done
}
wifi_onloop
