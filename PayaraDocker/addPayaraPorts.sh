#!/bin/bash

firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --permanent --zone=public --add-port=4848/tcp
firewall-cmd --reload

firewall-cmd --zone=public --list-ports
