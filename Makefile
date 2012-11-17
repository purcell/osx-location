GIST_URL=https://raw.github.com/gist/1416248/edcce7e477388152a8b41942d831cd0a720fd020/CoreLocationTest.m

all: EmacsLocationHelper

EmacsLocationHelper: CoreLocationTest.m
	clang CoreLocationTest.m -framework cocoa -framework CoreLocation -o EmacsLocationHelper

CoreLocationTest.m:
	wget $(GIST_URL) || curl $(GIST_URL) > CoreLocationTest.m


.phony: all
