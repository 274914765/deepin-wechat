#!/bin/sh

#   Copyright (C) 2016 Deepin, Inc.
#
#   Author:     Li LongYu <lilongyu@linuxdeepin.com>
#               Peng Hao <penghao@linuxdeepin.com>

BOTTLENAME="Deepin-WeChat"
APPVER="2.6.8.521deepin0"
EXEC_PATH="c:/Program Files/Tencent/WeChat/WeChat.exe"

/opt/deepinwine/tools/run.sh $BOTTLENAME $APPVER "$1" "$2" "$3"
