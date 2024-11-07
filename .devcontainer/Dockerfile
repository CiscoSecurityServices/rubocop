FROM ruby:3.1.2-slim-bullseye

# present this uid build arg for environments where it needs to be set
RUN useradd --create-home vscode



USER vscode
WORKDIR /usr/src/app
COPY --chown=vscode:vscode . .

CMD /bin/bash
