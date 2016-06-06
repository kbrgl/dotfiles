#!/bin/bash
echo -e "\uf025 $(awk -F[][] '{ print $2 }' <(amixer sget Master) | tail -n 1)"

