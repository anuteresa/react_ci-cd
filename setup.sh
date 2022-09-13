
	read -p "System? (prod/stg) default production: " system;
	case $system in
	"prod")
	SYSTEM="production";;
	"stg")
	SYSTEM="staging";;
	*)
	SYSTEM="production";;
	esac
    


