#UNIX script to build KonamiLayer stuff
#Set COMPILER to your Flex builder compiler location
COMPILER=/Applications/Adobe\ Flex\ Builder\ 3/sdks/3.2.0/bin/mxmlc

"$COMPILER" '-target-player=9.0.124' '-sp=./' -optimize com/sansumbrella/Demo.as
"$COMPILER" '-target-player=9.0.124' '-sp=./' -optimize com/sansumbrella/ExtraContent.as
mv com/sansumbrella/ExtraContent.swf extra/konami.swf
mv com/sansumbrella/Demo.swf Demo.swf
open Demo.swf