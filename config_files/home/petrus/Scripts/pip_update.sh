#!/bin/bash

mypkgs="ykdl you_get youtube_dl glances"

version=$(python -V | cut -d " " -f 2 | cut -d "." -f 1-2)

if [ -d ~/.local/lib64/python$version/site-packages ]; then
	allpkgs=$(ls ~/.local/lib64/python$version/site-packages | grep info | cut -d "-" -f 1)
	pip install --upgrade --user $allpkgs
else
	pip install --upgrade --user $mypkgs
fi
