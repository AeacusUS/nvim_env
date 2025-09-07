#!/usr/bin/env bash
# Usage: java-boilerplate.sh filename.java

file="$1"
classname=$(basename "$file" .java)

cat <<EOF
public class $classname {
    public static void main(String[] args) {
        System.out.println("Hello, world!");
    }
}
EOF
