# README

An Okinta Stack that holds all of Okinta's secrets.

## What is an Okinta Stack?

An Okinta stack is a deployable unit for Alga that runs within Okinta's infrastructure.
Stacks describe all necessary information to deploy a service.

For more information about Alga, refer to the [alga-infra repository][1].

[1]: https://github.com/okinta/alga-infra

## What is this Stack?

Runs [lucid][1], which is a basic key value store, as an Okinta Stack to store
configuration information that can be referenced by other stacks and other
parts of Okinta's infrastructure.

[1]: https://github.com/lucid-kv/lucid

## Dependencies

This stack is dependent on the [lucid][1] key value store.

[1]: https://github.com/lucid-kv/lucid

## Special Deployment Notes

Deployment of this stack isn't completely automated. Once it is deployed, the
secrets need to be loaded into the Vault. These secrets and instructions on how
to add them can be found in LastPass.

## Development

### Build

    docker build -t okinta/vultrkv .

### Run

    docker run -p 7020:7020 okinta/vultrkv

### Check FCOS Config Syntax

    fcct --strict < coreos.fcc > /dev/null
