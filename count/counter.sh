#!/bin/sh

exec lynx -dump -nolist https://www.globalrelay.com | grep -v "BUTTON" | grep -v "[.*.]"| wc -w
