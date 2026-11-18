FROM mrismanaziz/man-userbot:buster

WORKDIR /home/man-userbot/
RUN rm -rf /home/man-userbot && mkdir -p /home/man-userbot
COPY . /home/man-userbot/

WORKDIR /home/man-userbot/
RUN git init \
    && git checkout -b Man-Userbot \
    && git config user.email "railway-build@localhost" \
    && git config user.name "Railway Build" \
    && git add -A \
    && git commit -m "Build fork source" \
    && chmod +x start \
    && mkdir -p bin

CMD ["python3", "-m", "userbot"]
