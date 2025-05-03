# 选择 Node 运行环境
FROM node:18.20.7

# 设置工作目录
WORKDIR /app

# 复制文件
COPY . .

# 安装依赖
RUN npm install

# 生成静态文件
RUN npm run build

# 启动应用
CMD ["npm", "run", "start"]
