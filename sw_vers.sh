#!/bin/sh

declare -a applist=( "Google Chrome" "Firefox" "Microsoft Word" "Microsoft Excel" "Microsoft PowerPoint" "Adobe Acrobat Reader DC" )
for app in "${applist[@]}"
 do
  if [ -d "/Applications/$app.app" ]; then
	case $app in
		"Google Chrome" )
			printf "Chrome "; defaults read /Applications/"$app".app/Contents/Info.plist CFBundleShortVersionString
                        ;;
   	    "Microsoft Word" )
   			printf "Word "; defaults read /Applications/"$app".app/Contents/Info.plist CFBundleShortVersionString
   			;;
   	    "Microsoft Excel" )
   			printf "Excel "; defaults read /Applications/"$app".app/Contents/Info.plist CFBundleShortVersionString
   			;;
   		"Microsoft PowerPoint" )
			printf "PowerPoint "; defaults read /Applications/"$app".app/Contents/Info.plist CFBundleShortVersionString
   			;;
   		"Microsoft PowerPoint" )
			printf "PowerPoint "; defaults read /Applications/"$app".app/Contents/Info.plist CFBundleShortVersionString
   			;;
   		* )
   			printf '%s' "$app "; defaults read /Applications/"$app".app/Contents/Info.plist CFBundleShortVersionString
   			;;
	esac
  else
   echo "$app not installed"
  fi
 done

if [ -d "/Applications/Microsoft Outlook.app" ]; then
 echo -n "Outlook "
 echo $(defaults read /Applications/Microsoft\ Outlook.app/Contents/Info.plist CFBundleShortVersionString)
fi

if [ -d "/Applications/Adobe Acrobat DC/Adobe Acrobat.app" ]; then
 echo -n "Adobe Acrobat DC "
 echo $(defaults read /Applications/Adobe\ Acrobat\ DC/Adobe\ Acrobat.app/Contents/Info.plist CFBundleVersion)
fi
