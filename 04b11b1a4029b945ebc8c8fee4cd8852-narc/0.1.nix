{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "narc";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ezra@ezrakilty.net";
        author = "Ezra e. k. Cooper";
        homepage = "http://ezrakilty.net/projects/narc";
        url = "";
        synopsis = "Query SQL databases using Nested Relational Calculus embedded in Haskell.";
        description = "";
        buildType = "Simple";
      };
      components = {
        narc = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.HDBC
          ];
        };
      };
    }