#!/bin/bash

# Cấp quyền lưu trữ
termux-setup-storage

# Cập nhật và nâng cấp gói, auto chọn y
yes | pkg update
yes | pkg upgrade

# Cài đặt Python, PHP và công cụ cần thiết, auto chọn y
yes | pkg install python
yes | pkg install php
yes | pkg install android-tools
yes | pkg install wget

# Cài các thư viện Python, auto chọn y
pip install -y requests
pip install -y pyfiglet
pip install -y pystyle
pip install -y bs4
pip install -y faker
pip install -y colorama
pip install -y random_user_agent
pip install -y dnspython
pip install -y pycryptodomex
pip install -y cloudscraper
pip install -y psutil

# --- BƯỚC 1: Tải Python tool và dữ liệu vào Download ---
cd /sdcard/download
wget --no-check-certificate 'https://drive.usercontent.google.com/download?id=1rz4aLqoQek987SxwT_SYrSmWvMtwqNoj&export=download&authuser=0&confirm=t' -O gl.py
wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=14Cjz0LZCgwW8Dlw0JL7f9ObZhkjFiU3U&confirm=t' -O Authorization.txt
wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=1aP20mGtdCeS9a6O8DiLmaYwGdL_pg9PY&confirm=t' -O token.txt

# --- BƯỚC 2: Vào thư mục root-friendly, tải APK và cài ---
cd /data/local/tmp
wget --no-check-certificate 'https://drive.usercontent.google.com/download?id=1IH7uiQVhmzDzgdvmmfHE0eOgmbsbUdhd&export=download&authuser=0&confirm=t' -O vpn.apk
wget --no-check-certificate 'https://drive.usercontent.google.com/download?id=1R8uq8A5vk9BV0wBNTdm9ye9yNgTslm_X&export=download&authuser=0&confirm=t' -O tiktok.apk
wget --no-check-certificate 'https://drive.usercontent.google.com/download?id=1SsHO7MbkI21srSBp_buhPMsQ54TTCiMe&export=download&authuser=0&confirm=t' -O auto.apk

# Cài APK bằng root
su -c "pm install -r vpn.apk"
su -c "pm install -r tiktok.apk"
su -c "pm install -r auto.apk"

# --- BƯỚC 3: Quay lại /sdcard/download và chạy tool ---
cd /sdcard/download
python gl.py
