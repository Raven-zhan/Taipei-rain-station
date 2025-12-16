# 使用 Node.js 官方映像
FROM node:20

# 建立工作目錄
WORKDIR /app

# 複製 package.json 並安裝依賴
COPY package*.json ./
RUN npm install

# 複製專案程式
COPY . .

# 編譯前端 Vue 專案
RUN npm run build

# 暴露 port（可選）
EXPOSE 8080

# 啟動 server.js
CMD ["node", "server.js"]
