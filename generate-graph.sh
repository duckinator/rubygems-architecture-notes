#!/bin/bash

DIR=$(pwd)

cd ../rubygems && \
ruby2gv --stop optparse,fileutils,cgi,uri,net/http,openssl,psych,tempfile,time,base64,socket,rbconfig,timeout,monitor,pathname,digest,tsort,zlib,stringio,io/console,io/wait,etc,net/https,resolv,bundler -Tpng -o"${DIR}/rubygems-ruby2gv.png" bin/gem
