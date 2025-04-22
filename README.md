# ☂️ Umbrella - Bash Script Command Line Tool (Suport Cisco Secure Client Version 5.1.8.105 lasted)
![Cisco Secure Client Version](https://raw.githubusercontent.com/ongyoo/bypss-umbrella/refs/heads/main/Screenshot%202568-04-22%20at%2012.16.26.png)
จัดการ "เปิด" หรือ "ปิด" บริการต่างๆ ง่ายๆ ด้วยคำสั่งเดียวผ่าน Terminal

![Umbrella Demo](https://raw.githubusercontent.com/ongyoo/bypss-umbrella/refs/heads/main/Screenshot%202568-04-22%20at%2012.01.14.png)

---

## 📦 การติดตั้ง (Installation)

```bash
# 1. ให้สิทธิ์ในการรันสคริปต์
chmod +x umbrella.sh

# 2. ทดสอบเรียกใช้งานสคริปต์
sudo ./umbrella.sh close
sudo ./umbrella.sh open

# 3. ติดตั้งเป็นคำสั่ง umbrella ที่เรียกใช้จากที่ไหนก็ได้
sudo mv umbrella.sh /usr/local/bin/umbrella

## 🧭 คำสั่งหลัก

### ✅ เปิดระบบ / บริการ

```bash
sudo umbrella open

### 🚀 ปิดระบบ / บริการ

```bash
sudo umbrella close

### Demo
![Umbrella Demo](https://raw.githubusercontent.com/ongyoo/bypss-umbrella/refs/heads/main/Screenshot%202568-04-22%20at%2012.01.14.png)
