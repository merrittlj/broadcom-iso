#!/bin/sh
#cd nixpkgs/nixos
#export NIXPKGS_ALLOW_UNFREE=1
# should be on release branch already
#nix-build '<nixpkgs/nixos>' -A config.system.build.isoImage -I nixos-config=iso.nix
nix-build './nixpkgs/nixos' -A config.system.build.isoImage -I nixos-config=iso.nix
