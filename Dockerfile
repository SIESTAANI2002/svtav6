FROM python:3.9.2-slim-buster
RUN mkdir /bot && chmod 777 /bot
WORKDIR /bot
ENV DEBIAN_FRONTEND=noninteractive
run git clone https://github.com/XniceCraft/ffmpeg-colab --depth 1
RUN chmod +x ./ffmpeg-colab/install
RUN pip3 install -r requirements.txt
CMD ["bash","run.sh"]
