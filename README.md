# README

Runs basic key value store to store Vultr related information such as Vultr
API key.

## Build

    docker build -t okinta/vultrkv .

## Run

    docker run -p 7020:7020 okinta/vultrkv

## Check FCOS Config Syntax

    fcct --strict < ignition.fcc > /dev/null
