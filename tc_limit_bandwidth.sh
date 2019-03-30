#!/bin/bash


`sudo tc qdisc del dev eno1 root`
`sudo tc qdisc add dev eno1 root tbf rate 500kbit burst 32kbit latency 400ms`
