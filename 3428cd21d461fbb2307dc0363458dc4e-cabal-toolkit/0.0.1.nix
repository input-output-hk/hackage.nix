{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabal-toolkit";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Shao Cheng";
        maintainer = "Shao Cheng <astrohavoc@gmail.com>";
        author = "";
        homepage = "https://github.com/TerrorJack/cabal-toolkit#readme";
        url = "";
        synopsis = "Helper functions for writing custom Setup.hs scripts.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "cabal-toolkit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.Cabal
            hsPkgs.template-haskell
          ];
        };
      };
    }