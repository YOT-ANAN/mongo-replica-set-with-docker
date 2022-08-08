#!/bin/bash

mongo <<EOF
use admin;
admin = db.getSiblingDB("admin");
admin.createUser(
     {
	      user: "admin",
        pwd: "12345678",
        roles: [ { role: "root", db: "admin" } ]
     });
db.getSiblingDB("admin").auth("admin", "12345678");
rs.status();
sleep(5000);
exit
EOF