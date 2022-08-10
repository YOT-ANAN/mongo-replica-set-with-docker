#!/bin/bash

mongo <<EOF
var config = {
    "_id": "rs0",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "192.168.11.11:27020",
            "priority": 3
        },
        {
            "_id": 2,
            "host": "192.168.11.11:27021",
            "priority": 2
        },
        {
            "_id": 3,
            "host": "192.168.11.11:27022",
            "priority": 1
        }
    ]
};
rs.initiate(config, { force: true });
sleep(5000);
exit