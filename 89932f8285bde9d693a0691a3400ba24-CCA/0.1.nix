{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "CCA";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Paul H Liu <paul@thev.net>";
        author = "Paul H Liu <paul@thev.net>, Eric Cheng <eric.cheng@yale.edu>";
        homepage = "not available";
        url = "";
        synopsis = "preprocessor and library for Causal Communtative Arrows (CCA)";
        description = "A library that provides normalization support via Template\nHaskell for CCAs, and a modified preprocessor based on\nRoss Patterson's arrowp that reads Haskell with arrow notation\nand outputs Haskell 98 + Template Haskell sources for\nuse with CCA library.";
        buildType = "Simple";
      };
      components = {
        CCA = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ] ++ pkgs.lib.optionals compiler.isGhc [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.ghc-prim
          ];
        };
        exes = {
          ccap = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.haskell-src
            ];
          };
        };
      };
    }