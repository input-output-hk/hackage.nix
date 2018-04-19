{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "linux-blkid";
          version = "0.2.0.0";
        };
        license = "LGPL-2.1-only";
        copyright = "© 2013 Nicola Squartini";
        maintainer = "Nicola Squartini <tensor5@gmail.com>";
        author = "Nicola Squartini";
        homepage = "";
        url = "";
        synopsis = "Linux libblkid";
        description = "Bindings to the Linux libblkid library.";
        buildType = "Simple";
      };
      components = {
        linux-blkid = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-control
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
      };
    }