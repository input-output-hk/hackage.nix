{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabal-test-compat";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://twitter.com/khibino/";
        url = "";
        synopsis = "Compatibility interface of cabal test-suite.";
        description = "This package provides compatibility interface module\nof cabal test-suite.";
        buildType = "Simple";
      };
      components = {
        "cabal-test-compat" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.QuickCheck
          ];
        };
      };
    }