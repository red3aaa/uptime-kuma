# 使用官方 Uptime Kuma 镜像作为基础
FROM louislam/uptime-kuma:1

# 将我们的自定义启动脚本复制到容器的 /app 目录下
COPY entrypoint.sh /app/entrypoint.sh

# 给予脚本执行权限
RUN chmod +x /app/entrypoint.sh

# 设置容器的入口点为我们的自定义脚本
ENTRYPOINT ["/app/entrypoint.sh"]
