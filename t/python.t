#!/usr/bin/env bash

source bash-tap
source bash-snapshot

plan 1

memplate main_block  <<< 'print("hello")
print("world")'

memplate application <<< 'def main():
    <main_block

if __name__ == "__main__":
    main()'

snapshot <(memplate <<< '<application'
echo '---'
memplate <<< '<application' | python -) "./t/python.t.snapshot"
success 'Output is correct'
