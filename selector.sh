	PS3='Enter your /tmp partition type: '
	options=("vfat" "ext2" "ext3" "ext4" "ntfs" "ADVANCED" "Quit")
	select partition in "${options[@]}"
	do
		case $partition in
		"vfat")
			TMPTYPE=$partition; echo "$partition entered"; break;;
		"ext2")
			TMPTYPE=$partition; echo "$partition entered"; break;;
		"ext3")
			TMPTYPE=$partition; echo "$partition entered"; break;;
		"ext4")
			TMPTYPE=$partition; echo "$partition entered"; break;;
		"ntfs")
			TMPTYPE=$partition; echo "$partition entered"; break;;
		"ADVANCED")
		echo "\"I know what I'm doing\" they said..."; read TMPTYPE; echo "You chose $TMPTYPE"; break;;
		"Quit")
			echo "Quiting program"; exit; break;;
		*) echo "invalid option $REPLY";;
		esac
done
