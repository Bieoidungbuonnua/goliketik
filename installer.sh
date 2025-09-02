#!/bin/bash

# Cấp quyền lưu trữ
termux-setup-storage

# Cập nhật và nâng cấp gói
pkg update -y
pkg upgrade -y

# Cài đặt Python, PHP và công cụ cần thiết
pkg install python -y
pkg install php -y
pkg install android-tools -y
pkg install wget -y

# Cài các thư viện Python
pip install requests
pip install pyfiglet
pip install pystyle
pip install bs4
pip install faker
pip install colorama
pip install random_user_agent
pip install dnspython
pip install pycryptodomex
pip install cloudscraper
pip install psutil

# Chuyển vào thư mục Download
cd /sdcard/download

# Tải file từ Google Drive
wget --no-check-certificate 'https://drive.usercontent.google.com/download?id=1rz4aLqoQek987SxwT_SYrSmWvMtwqNoj&export=download&authuser=0&confirm=t&uuid=f3f50774-f8a5-49d8-a10e-85661641db44&at=AN8xHooxidRL0DO7aAWmBYHKlUP0%3A1756640452122' -O gl.py
wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=14Cjz0LZCgwW8Dlw0JL7f9ObZhkjFiU3U&confirm=t' -O Authorization.txt
wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=1aP20mGtdCeS9a6O8DiLmaYwGdL_pg9PY&confirm=t' -O token.txt
