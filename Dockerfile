FROM google/dart:2

COPY . /action

RUN cd /action/scripts && chmod +x *.sh

RUN cd /action/app && pub get

ENTRYPOINT [ "dart", "/action/app/bin/main.dart" ]