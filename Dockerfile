FROM node:10.18.1

EXPOSE 3978 3979

RUN npm i -g yo generator-botbuilder

VOLUME /usr/app/botfx

WORKDIR /usr/app/botfx

RUN useradd --create-home --shell /bin/bash botfx && \
    usermod -aG sudo botfx && \
    chown -R botfx:botfx /usr/app/botfx

USER botfx

CMD /bin/bash