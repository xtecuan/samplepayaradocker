#!/bin/bash

firewall-cmd --permanent --zone=public --add-port=5432/tcp
firewall-cmd --reload

firewall-cmd --zone=public --list-ports
