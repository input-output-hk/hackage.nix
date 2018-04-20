{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "liquidhaskell-cabal";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Michael Smith";
        maintainer = "Michael Smith <michael@spinda.net>";
        author = "Michael Smith";
        homepage = "https://github.com/spinda/liquidhaskell-cabal#readme";
        url = "";
        synopsis = "Liquid Haskell integration for Cabal and stack";
        description = "Provides support for checking projects using Cabal\nand/or stack with LiquidHaskell.\nPlease see the \"LiquidHaskell.Cabal\" module or the\nREADME on GitHub for documentation.";
        buildType = "Simple";
      };
      components = {
        liquidhaskell-cabal = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.filepath
          ];
        };
      };
    }