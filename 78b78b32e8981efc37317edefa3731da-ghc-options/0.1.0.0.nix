{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-options";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jhala@cs.ucsd.edu";
        author = "Ranjit Jhala";
        homepage = "https://github.com/ranjitjhala/ghc-options.git";
        url = "";
        synopsis = "Utilities for extracting GHC options needed to compile a given Haskell target.";
        description = "'ghcopts' is a library that makes it easy to determine what\nGHC options are needed to compile a file. It was built\nby extracting the relevant code from 'hdevtools' which\nqueries 'cabal' and 'stack' to determine the locations\nof various package databases, in order to pass them to\nGHC to process a target file. We have refactored this\ncode into a separate package so that it can be used by\nother tools built on the GHC API.";
        buildType = "Simple";
      };
      components = {
        ghc-options = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.Cabal
            hsPkgs.bin-package-db
            hsPkgs.unix
          ];
        };
        exes = {
          ghcopts = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.Cabal
              hsPkgs.bin-package-db
              hsPkgs.unix
            ];
          };
        };
      };
    }