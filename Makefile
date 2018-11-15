PREFIX?=/usr/local

PROD_NAME=DRWApns
PROD_NAME_HOMEBREW=DRWApns

build:
	swift build --disable-sandbox -c release -Xswiftc -static-stdlib

build-for-linux:
	swift build --disable-sandbox -c release

run:
	.build/release/$(PROD_NAME)

