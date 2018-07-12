{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "yi-vty";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "dons@cse.unsw.edu.au";
        author = "Don Stewart";
        homepage = "";
        url = "";
        synopsis = "Vty backend for Yi";
        description = "Core functions for the Vty backend of Yi.\nNote that you will need the yi package to use this.";
        buildType = "Custom";
      };
      components = {
        "yi-vty" = {
          depends  = [
            hsPkgs.ghc
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.vty
            hsPkgs.regex-posix
            hsPkgs.filepath
          ];
        };
      };
    }