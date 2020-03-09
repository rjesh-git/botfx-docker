# Microsoft Bot Framework - Bot Builder Docker file

Docker image for building bots with [BotBuilder V4 SDK](https://github.com/Microsoft/BotBuilder)

[![Pulls from Docker Hub](https://img.shields.io/docker/pulls/rjesh/botfx.svg)](https://hub.docker.com/r/rjesh/botfx)  ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/rjesh/botfx)

## Usage

### 1. Create new bot in container

```sh
# Create project folder to be mounted from host as volume
mkdir [project]
cd [project]
docker run -it --rm --name ${PWD##*/} -v $PWD:/usr/app/botfx -p 3978:3978 rjesh/botfx
# Use Yeoman scaffolding generator which is pre-installed in the image
yo botbuilder
```

Follow the instructions given in [quick build guide](https://docs.microsoft.com/en-us/azure/bot-service/javascript/bot-builder-javascript-quickstart?view=azure-bot-service-4.0)  build the bot.

### 2. Run BotBuilder sample in container

Download/clone - [https://github.com/microsoft/BotBuilder-Samples](https://github.com/microsoft/BotBuilder-Samples)

```sh
# Only JavaScript_nodejs and TypeScript_nodejs projects
cd [sample_folder]
docker run -it --rm --name ${PWD##*/} -v $PWD:/usr/app/botfx -p 3978:3978 rjesh/botfx
npm i
npm start
```

Use Bot Framework Emulator and connect to the bot - <http://localhost:3978/api/messages>

More details in this blog post - <https://rjesh.com/bot-framework-in-docker/>
