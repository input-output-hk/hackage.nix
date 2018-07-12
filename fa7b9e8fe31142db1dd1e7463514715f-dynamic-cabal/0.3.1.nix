{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dynamic-cabal";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Benno Fünfstück";
        maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
        author = "Benno Fünfstück";
        homepage = "http://github.com/bennofs/dynamic-cabal/";
        url = "";
        synopsis = "dynamic-cabal";
        description = "dynamic-cabal";
        buildType = "Custom";
      };
      components = {
        "dynamic-cabal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.haskell-generate
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskell-src-exts
            hsPkgs.void
            hsPkgs.data-default
          ];
        };
        tests = {
          "dynamic-cabal-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.dynamic-cabal
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.HUnit
              hsPkgs.tasty-th
              hsPkgs.containers
              hsPkgs.directory
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }