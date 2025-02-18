# 使用 Python 3.9 作為基礎映像
FROM python:3.9

# 設定工作目錄
WORKDIR /app

# 複製 requirements.txt 到容器內
COPY requirements.txt .

# 安裝依賴
RUN pip install --no-cache-dir -r requirements.txt

# 複製所有其他檔案到容器內
COPY . .

# 開啟 Port 80
EXPOSE 80

# 啟動 Flask 應用
CMD ["python", "app.py"]
