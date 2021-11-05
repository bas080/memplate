#!/usr/bin/env bash

source bash-tap
source bash-snapshot

plan 1

snapshot <(memplate <<< '\<p>') "./t/escape.t.snapshot"
success 'Escaping works'
