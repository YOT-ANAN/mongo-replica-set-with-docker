# MongoDB replica set
สำหรับการทำ replica set ด้วย docker ใน host เครื่องเดียว

## Prerequisites
ติดตั้ง docker และ docker-compose

## Create the replica set
```shell
./dbstart.sh
```
*** อาจะต้องเปลี่ยน permission ให้ใช้คำสั่ง chmod +x ./dbstart.sh

## Connect to the primary docker instance
```shell
docker exec -it mongo1 mongo
```

## Shutdown the replica set
```shell
docker-compose down
```

## TEST 
หากต้องการทดสอบว่า replica set สามารถทำงานได้จริง ๆ ให้ทดลอง down docker ตัวที่เป็น mongo primary หลังจากนั้นจะมีตัว secondary ขึ้นมาทำงานแทนทันที
```shell
docker stop mongo1
```

## NOTE
ในไฟล์ rs-init.sh ในส่วน member ให้ใช้ ip เครื่องของ host ในวงของเครื่อง db ได้เลย
เวอร์ชั่น image ของ mongo จะใช้เป็นเวอร์ชัน 4.4 ซึ่งผ่านการทดสอบแล้ว
script จะทำงานได้บน linux เท่านั้น  |  YOT-ANAN

