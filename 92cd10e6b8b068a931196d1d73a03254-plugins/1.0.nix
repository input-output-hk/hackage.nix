{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "plugins";
          version = "1.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "dons@cse.unsw.edu.au";
        author = "Don Stewart";
        homepage = "";
        url = "";
        synopsis = "";
        description = "";
        buildType = "Custom";
      };
      components = {
        plugins = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.haskell-src
          ];
        };
      };
    }