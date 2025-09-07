#!/usr/bin/env bash
# Usage: uni-java-boilerplate.sh filename.java

file="$1"
classname=$(basename "$file" .java)

cat <<EOF
/* 
Tucker Judge | judg0033
*/

public class $classname {
    public static void main(String[] args) {
        System.out.println("Hello, world!");
    }
}
EOF
