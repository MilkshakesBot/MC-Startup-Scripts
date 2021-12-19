# MC Startup Scripts

This contains scripts for both linux and windows to easly lauch minecraft server. This has tested to work on Windows 10 and Ubuntu. These scripts already have the modifided java arguments from [Aikar](https://aikar.co/2018/07/02/tuning-the-jvm-g1gc-garbage-collector-flags-for-minecraft/).

#### Requirements

1. Current Version of JAVA used by Minecraft.
2. Curl if you are on linux. *(Potentially on windows if not allready installed with CMD)*

## How to use

1. Copy the script of what ever minecraft version you will be using. Wether the be ```Forge``` ```Fabric``` ```Paper``` or ```Default```. In the case of Paper and Default it will automaticly pull the newest version of those servers. 

2. Then you will have to to is change the amount of ram you would like to use for the server. It is currently set a 1G so please change it to your desired amount.

3. Unless you are using a paper, forge or fabric server you are all done and you can run the script to start the server and pull the needed files.
 
## Updating The Servers

*Make sure you shut down the server*

- For Default server JAR remove the JAR file and run the script

- For the other 3 servers download JAR from their sources and replacing the JAR file in the server directory _make sure the file names are what the script calls for_



## Paper

You will have to download yourself the latest version this server

  - To upgrade to a newer version of Paper move the new JAR into the minecraft folder and remove old JAR

  - [Paper Server](https://papermc.io/downloads)


## Forge and Fabric 

You will have to download yourself the latest version of these servers and set the version in the script you will be using. 

  - [Fabric Server](https://fabricmc.net/use/?page=server)

  - [Forge Server](https://files.minecraftforge.net/net/minecraftforge/forge/)

# EULA
This script pull a file that has already set the EULA to true. 

[__*MAKE SURE YOU ARE IN ACCORDANCE WITH THE EULA*__](https://www.minecraft.net/en-us/eula)
