#!/bin/bash
tail -n +2 "/etc/hosts" >> "/etc/hosts.tmp" && mv "/etc/hosts.tmp" "/etc/hosts" -f
exit "0"