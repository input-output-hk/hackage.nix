{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hspec";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Trystan Spangler 2011";
        maintainer = "trystan.s@comcast.net";
        author = "Trystan Spangler";
        homepage = "https://github.com/trystan/hspec";
        url = "";
        synopsis = "Behavior Driven Development for Haskell";
        description = "Behavior Driven Development for Haskell";
        buildType = "Custom";
      };
      components = {
        hspec = {
          depends  = [
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.base
          ];
        };
      };
    }