{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ghc-six-ten-one = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vacuum";
          version = "0.0.8";
        };
        license = "LicenseRef-LGPL";
        copyright = "(c) Matt Morrow 2008";
        maintainer = "Matt Morrow <morrow@moonpatio.com>";
        author = "Matt Morrow";
        homepage = "http://moonpatio.com/vacuum/";
        url = "";
        synopsis = "Extract graph representations of ghc heap values.";
        description = ".";
        buildType = "Simple";
      };
      components = {
        "vacuum" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.ghc-paths
            hsPkgs.ghc
            hsPkgs.Cabal
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.pretty
            hsPkgs.haskell-src-meta
          ];
        };
      };
    }