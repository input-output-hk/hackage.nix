#!/bin/bash
(cd all-cabal-hashes && git checkout hackage && git pull)
$(find $NIX_TOOLS -type f -name "hashes-to-nix") all-cabal-hashes > all-cabal-hashes.nix
$(find $NIX_TOOLS -type f -name "hashes-to-nix") all-cabal-hashes > all-cabal-hashes.nix
