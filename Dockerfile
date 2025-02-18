# 使用 Python 3.9 作為基礎映像
FROM python:3.9

# 設定工作目錄
WORKDIR /app

# 複製當前目錄內的所有檔案到容器
COPY . .

# 安裝 Flask
RUN pip install --no-cache-dir -r requirements.txt

# 開啟 Port 80
EXPOSE 80

# 啟動 Flask 應用
CMD ["python", "app.py"]
