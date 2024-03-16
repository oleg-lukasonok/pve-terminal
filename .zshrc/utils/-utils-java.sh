#!/bin/zsh
#
# TOBE ADDED --> Licence & Copyright Disclaimer
#

jdk() {
  version=$1
  unset JAVA_HOME
  export JAVA_HOME=$(/usr/libexec/java_home -v"$version")
  java -version
}

setJavaZulu11() {
  unset JAVA_HOME
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
  java -version
}
