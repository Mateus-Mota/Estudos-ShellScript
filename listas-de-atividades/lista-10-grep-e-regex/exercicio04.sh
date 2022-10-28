#!/bin/bash

read -p "email: " email && echo $email | grep "*@*" && echo "SIM" || echo "NÃO"
