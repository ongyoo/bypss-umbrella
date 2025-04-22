# ☂️ Umbrella - Bash Script Command Line Tool

จัดการ "เปิด" หรือ "ปิด" บริการต่างๆ ง่ายๆ ด้วยคำสั่งเดียวผ่าน Terminal

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
[Demo](./Screenshot 2568-04-22 at 12.01.14.png)
