#!/bin/bash
# ラズパイ側 Webカメラ → ノートPC へ UDP 送信

# ノートPCのIPアドレスを設定
PC_IP="<ノートPCのIP>"

# 映像送信
ffmpeg -f v4l2 -framerate 30 -video_size 640x480 -i /dev/video0 \
    -c:v libx264 -preset ultrafast -tune zerolatency -b:v 2M \
    -f mpegts udp://$PC_IP:5000

