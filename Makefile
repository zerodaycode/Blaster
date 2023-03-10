# Makefile generated by MakefileGenerator.cs
# *DO NOT EDIT*

UNREALROOTPATH = /opt/UnrealEngine5
GAMEPROJECTFILE =/home/alexvergara/code/Unreal Engine/Blaster/Blaster.uproject

TARGETS = \
	Blaster-Linux-DebugGame  \
	Blaster-Linux-Shipping  \
	Blaster \
	BlasterEditor-Linux-DebugGame  \
	BlasterEditor-Linux-Shipping  \
	BlasterEditor \
	UnrealEditor-Linux-DebugGame  \
	UnrealEditor-Linux-Shipping  \
	UnrealEditor \
	UnrealGame-Linux-DebugGame  \
	UnrealGame-Linux-Shipping  \
	UnrealGame\
	configure

BUILD = bash "$(UNREALROOTPATH)/Engine/Build/BatchFiles/Linux/Build.sh"
PROJECTBUILD = "$(UNREALROOTPATH)/Engine/Binaries/ThirdParty/DotNet/6.0.302/linux/dotnet" "$(UNREALROOTPATH)/Engine/Binaries/DotNET/UnrealBuildTool/UnrealBuildTool.dll"

all: StandardSet

RequiredTools: CrashReportClient-Linux-Shipping CrashReportClientEditor-Linux-Shipping ShaderCompileWorker UnrealLightmass EpicWebHelper-Linux-Shipping

StandardSet: RequiredTools UnrealFrontend BlasterEditor UnrealInsights

DebugSet: RequiredTools UnrealFrontend-Linux-Debug BlasterEditor-Linux-Debug


Blaster-Linux-DebugGame:
	 $(PROJECTBUILD) Blaster Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

Blaster-Linux-Shipping:
	 $(PROJECTBUILD) Blaster Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

Blaster:
	 $(PROJECTBUILD) Blaster Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

BlasterEditor-Linux-DebugGame:
	 $(PROJECTBUILD) BlasterEditor Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

BlasterEditor-Linux-Shipping:
	 $(PROJECTBUILD) BlasterEditor Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

BlasterEditor:
	 $(PROJECTBUILD) BlasterEditor Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealEditor-Linux-DebugGame:
	 $(BUILD) UnrealEditor Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealEditor-Linux-Shipping:
	 $(BUILD) UnrealEditor Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealEditor:
	 $(BUILD) UnrealEditor Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealGame-Linux-DebugGame:
	 $(BUILD) UnrealGame Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealGame-Linux-Shipping:
	 $(BUILD) UnrealGame Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

UnrealGame:
	 $(BUILD) UnrealGame Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

configure:
	xbuild /property:Configuration=Development /verbosity:quiet /nologo "$(UNREALROOTPATH)/Engine/Source/Programs/UnrealBuildTool/UnrealBuildTool.csproj"
	$(PROJECTBUILD) -projectfiles -project="\"$(GAMEPROJECTFILE)\"" -game -engine 

.PHONY: $(TARGETS)
