#!/bin/sh

alias RunBlaster='./Build/Linux/Blaster/Binaries/Linux/Blaster'
alias CleanProjectFiles='rm -rf Binaries && rm -rf Intermediate && rm -rf Saved && rm -rf Plugins/MultiplayerSessions/Intermediate && rm -rf Plugins/MultiplayerSessions/Binaries'
alias CleanMultiplayerPlugin='rm -rf Plugins/MultiplayerSessions/Intermediate && rm -rf Plugins/MultiplayerSessions/Binaries'
alias GenerateProjectFiles='cd /opt/UnrealEngine5/Engine/Build/BatchFiles/Linux && ./GenerateProjectFiles.sh ~/code/Unreal\ Engine/Blaster && cd ~/code/Unreal\ Engine/Blaster'