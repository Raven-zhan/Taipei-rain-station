# 使用輕量級 Nginx
FROM nginx:alpine

# 複製 Vue build 出來的 dist 到 nginx 靜態資料夾
COPY dist /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

# 啟動 nginx
CMD ["nginx", "-g", "daemon off;"]
