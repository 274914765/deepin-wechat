# deepin-wechat

本镜像基于[bestwu/docker-wechat](https://github.com/bestwu/docker-wechat)，并升级wechat到2.6.8版本


### 使用说明

- 首先需执行以下指令，以允许通过X11服务提供wechat图形界面

```shell
sudo xhost +
```

- 安装
  - `$HOME/Workspaces/Tools/docker/wechat/WeChatFiles`为宿主机上的wechat文档保存目录，可根据实际情况进行调整
  - `XMODIFIERS`、`QT_IM_MODULE`、`GTK_IM_MODULE`均为[输入法环境变量](https://fcitx-im.org/wiki/Input_method_related_environment_variables/zh-hans)，需与宿主机对应的环境变量保持一致

```shell
sudo docker run -d --name wechat --device /dev/snd \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/Workspaces/Tools/docker/wechat/WeChatFiles:/WeChatFiles \
-e DISPLAY=unix$DISPLAY \
-e XMODIFIERS=$XMODIFIERS \
-e QT_IM_MODULE=$QT_IM_MODULE \
-e GTK_IM_MODULE=$GTK_IM_MODULE \
-e AUDIO_GID=`getent group audio | cut -d: -f3` \
-e GID=`id -g` \
-e UID=`id -u` \
deepin-wechat
```

- 开启

```shell
sudo docker start wechat
```

- 关闭

```shell
sudo docker stop wechat
```
