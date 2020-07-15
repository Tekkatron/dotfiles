#!/bin/sh
free -h | awk 'NR==2{printf "%s/%s (%.i%%)\n", $3,$2,$3*100/$2 }'