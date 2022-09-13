#!/bin/bash
function dumpData() {	
	read -p "System? (prod/stg) default production: " system;
	case $system in
	"prod")
	SYSTEM="production";;
	"stg")
	echo "staging";;
	*)
	SYSTEM="production";;
  esac
}

MODE=$1	
	if [ $MODE != "dump" ] && [ $MODE != "load" ]; then
	echo "Invalid mode, use dump or load"
	exit 1
	fi
	if [[ $MODE = "dump" ]]; then
	dumpData
	else
	loadData
	fi

    


