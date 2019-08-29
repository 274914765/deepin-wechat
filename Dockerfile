FROM bestwu/wechat

COPY run.sh /tmp/run.sh
COPY deepin.com.wechat_2.6.8.52deepin0_i386.deb /tmp/deepin.com.wechat_2.6.8.52deepin0_i386.deb
RUN dpkg --force-all -i /tmp/deepin.com.wechat_2.6.8.52deepin0_i386.deb && \
    mv -f /tmp/run.sh /opt/deepinwine/apps/Deepin-WeChat/

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
