#!/bin/bash

mongo <<EOF
use admin;
db.createUser(
  {
    user: "bp",
    pwd: "rootbp",
    roles: [ "root" ]
  }
)
db.createUser(
  {
    user: "admin",
    pwd: "12345678", 
    roles: [ "dbOwner", "userAdmin", "userAdminAnyDatabase" ]
  }
)

db.createUser(
  {
    user: "e-billpay",
    pwd: "12345678", 
        roles: [
            {
                role: "readWrite",
                db: "e-billpay"
            }
        ]
  }
)

rs.status();
sleep(5000);
exit
EOF