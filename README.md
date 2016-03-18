# Galaban's Repop Message Plugin

This plugin will pay attention to the Legend of the Jedi mud and send a "-->Repop<--" message when the world repopulates.  Since LOTJ repopulates the area within 30-60 seconds after the area spawn message, this repop message is approximate, and occurs at 45 seconds post-spawn message.

## To use

repop enable - Turns the repop message on and off
repop sound  - turns the default sound on and off
repop sound here - Turns on and off the planetary overrides
repop picksound  - picks a sound file to play when the repop occurs
repop playnow - plays the currently select sound file.  To test it out.

###Regarding planetary overrides

You can turn the sound on and off using the "repop sound" command.  However, if you want it on or off for a specific planet, but the opposite for all other places, you can set a planetary override. So, for example, I have the repop message only beep when I'm on Corellia or Lorrd, so I know that there are more cameras or carbon.  My default is Off, but those two planets have overrides so that I will hear a beep when on those planets.

Turning the default on or off will clear all planetary overrides that are also on or off.  I chose to implement it that way so that planetary overrides can easily be cleared.  Changing the default resets the overrides.

## To install
1. Download the raw files from github:
https://raw.github.com/galaban/LOTJRepopMessage/master/Galaban_RepopMessage.xml
https://raw.github.com/galaban/LOTJRepopMessage/master/LotJMSDPPlanet.lua
2. Place the raw file into your "plugins" directory.  This is fund in your Mushclient folder under /worlds/plugins.
3. Install the plugain in MushClient.  From the "File" menu, choose "plugins", then "Add".  Select the xml file and choose "OK".

Note: This requires LotJMSDPPlanet.lua as well


