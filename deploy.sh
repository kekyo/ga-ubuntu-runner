#!/bin/sh

podman tag a988d351a047 kekyo/ga_ubuntu_runner:latest
podman login
podman push kekyo/ga_ubuntu_runner:latest

