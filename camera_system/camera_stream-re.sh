#!/bin/bash
# ノートPC側 UDP受信 → ffplayで表示

ffplay -fflags nobuffer -flags low_delay -framedrop -strict experimental udp://@:5000

