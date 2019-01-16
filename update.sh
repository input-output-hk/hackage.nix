#!/usr/bin/env bash
# make sure the hackage index is recent.
cabal new-update
$(find -L $NIX_TOOLS -type f -name "hackage-to-nix") .
