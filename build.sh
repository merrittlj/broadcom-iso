#!/bin/sh
cd nixpkgs/nixos
export NIXPKGS_ALLOW_UNFREE=1
# should be on release branch already
nix-build -A config.system.build.isoImage -I nixos-config=modules/installer/cd-dvd/installation-cd-minimal-broadcom.nix default.nix
