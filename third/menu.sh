#!/bin/bash

cd
sed -i '$ i\screen -AmdS limit /root/limit.sh' /etc/rc.local
sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.local
sed -i '$ i\screen -AmdS limit /root/limit.sh' /etc/rc.d/rc.local
sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.d/rc.local
echo "0 0 * * * root /usr/local/bin/user-expire" > /etc/cron.d/user-expire
echo "0 0 * * * root /usr/local/bin/user-expire-pptp" > /etc/cron.d/user-expire-pptp

cat > /root/ban.sh <<END3
#!/bin/bash
#/usr/local/bin/user-ban
END3

cat > /root/limit.sh <<END3
#!/bin/bash
#/usr/local/bin/user-limit
END3

cd /usr/local/bin
wget -O premium-script.tar.gz "https://github.com/cartoonn/Auto-debian7/raw/master/masterscript/premium-script.tar.gz"
tar -xvf premium-script.tar.gz
rm -f premium-script.tar.gz

cp /usr/local/bin/premium-script /usr/local/bin/menu

chmod +x /usr/local/bin/สร้างบัญชีทดลองใช้
chmod +x /usr/local/bin/สร้างบัญชี
chmod +x /usr/local/bin/เพิ่มวันใช้งาน
chmod +x /usr/local/bin/แบนบัญชี
chmod +x /usr/local/bin/ลบบัญชี
chmod +x /usr/local/bin/บัญชีที่ถูกแบน
chmod +x /usr/local/bin/ล้อคบัญชีที่หมดอายุ
chmod +x /usr/local/bin/จำกัดการเข้าสู่ระบบMulti
chmod +x /usr/local/bin/ล็อคบัญชี
chmod +x /usr/local/bin/บัญชีที่ออนไลน์
chmod +x /usr/local/bin/ปลดแบนบัญชี
chmod +x /usr/local/bin/ปลดล็อคบัญชี
chmod +x /usr/local/bin/เปลี่นรหัสผ่าน
chmod +x /usr/local/bin/ดูล็อคการเข้าสู่ระบบ
chmod +x /usr/local/bin/สร้างบัญชี-pptp
chmod +x /usr/local/bin/ลบบัญชี-pptp
chmod +x /usr/local/bin/ดูรายชื่อผู้ใช้-pptp
chmod +x /usr/local/bin/บัญชี่ที่ออนไลน์-pptp
chmod +x /usr/local/bin/ผู้ใช้ที่หมดอายุ-pptp
chmod +x /usr/local/bin/รายละเอียดผู้ใช้-pptp
chmod +x /usr/local/bin/เครือข่ายมาตรฐาน
chmod +x /usr/local/bin/เทสความเร็วเน็ต
chmod +x /usr/local/bin/แรม
chmod +x /usr/local/bin/เข้าสู่ระบบขีด จำกัด
chmod +x /usr/local/bin/แบนล็อคอิน
chmod +x /usr/local/bin/สร้างบัญชีอัตโนมัติ
chmod +x /usr/local/bin/รายชื่อผู้ใช้
chmod +x /usr/local/bin/diagnosa
chmod +x /usr/local/bin/พรีเมี่ยมสคริปต์
chmod +x /usr/local/bin/ลบผู้ใช้ที่หมดอายุ
chmod +x /usr/local/bin/รีบูตอัตโนมัติ
chmod +x /usr/local/bin/เข้าสู่ระบบการติดตั้ง
chmod +x /usr/local/bin/เมนู
chmod +x /usr/local/bin/จำกัดผู้ใช้อัตโนมัติ
chmod +x /usr/local/bin/user-auto-limit-script
chmod +x /usr/local/bin/แก้ไข-port
chmod +x /usr/local/bin/แก้ไข-port-squid
chmod +x /usr/local/bin/แก้ไข-port-openvpn
chmod +x /usr/local/bin/แก้ไข-port-openssh
chmod +x /usr/local/bin/แก้ไข-port-dropbear
chmod +x /usr/local/bin/ลบอัตโนมัติ
chmod +x /root/limit.sh
chmod +x /root/ban.sh
screen -AmdS limit /root/limit.sh
screen -AmdS ban /root/ban.sh
clear
cd
echo "คริปต์พรีเมี่ยมได้รับการอัพเกรดเรียบร้อยแล้ว!"
