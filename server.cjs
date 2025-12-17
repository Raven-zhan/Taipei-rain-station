const express = require('express');
const path = require('path');
const app = express();

// 監聽 Cloud Run 提供的 $PORT
const port = process.env.PORT || 8080;

// 將 Vue 專案編譯後的 dist 當作靜態檔案
app.use(express.static(path.join(__dirname, 'dist')));

// 所有路由導向 index.html
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

app.listen(port, '0.0.0.0', () => {
  console.log(`Server listening on port ${port}`);
});
