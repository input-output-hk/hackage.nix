{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vacuum";
          version = "0.0.5";
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
            hsPkgs.ghc
            hsPkgs.ghc-prim
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.pretty
            hsPkgs.haskell-src-meta
            hsPkgs.Cabal
            hsPkgs.ghc-paths
          ];
        };
      };
    }