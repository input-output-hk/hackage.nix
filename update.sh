#!/bin/bash
# make sure the hackage index is recent.
cabal new-update
$(find $NIX_TOOLS -type f -name "hackage-to-nix") .
