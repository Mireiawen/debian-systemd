#!/bin/bash
# 
# Prevent "cron NUMBER OF HARD LINKS > 1"
touch /etc/crontab
touch /etc/cron.d/*
