FROM mattonem/pharodockerfile:pharo70 

MAINTAINER mattone.m@gmail.com

COPY setup.st setup.st
RUN ./pharo Pharo.image eval "(FileStream fileNamed: './setup.st') fileIn."
EXPOSE 8080
ENTRYPOINT ["/pharo", "Pharo.image", "--no-quit"]
