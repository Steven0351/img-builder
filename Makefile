IMG_VERSION := $(shell cat IMG_VERSION.txt)

ARCHS := amd64 arm64
GCCS := 

img: img-$(subst v,,$(IMG_VERSION))
	curl https://github.com/genuinetools/img/archive/$(IMG_VERSION).tar.gz
	tar -xvf $(IMG_VERSION).tar.gz

include $(img)/Makefile