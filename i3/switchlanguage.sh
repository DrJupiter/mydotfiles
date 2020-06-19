#!/bin/bash

# This will be a hacky solution that only switches between us and dk layout

if [ `setxkbmap -query | grep -Eo 'us$'` ];
then
	setxkbmap -layout dk
else
	setxkbmap -layout us
fi
