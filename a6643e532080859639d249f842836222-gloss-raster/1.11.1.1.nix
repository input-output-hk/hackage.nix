{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gloss-raster";
          version = "1.11.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benl@ouroborus.net";
        author = "Ben Lippmeier";
        homepage = "http://gloss.ouroborus.net";
        url = "";
        synopsis = "Parallel rendering of raster images.";
        description = "Parallel rendering of raster images.";
        buildType = "Simple";
      };
      components = {
        gloss-raster = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.containers
            hsPkgs.repa
            hsPkgs.gloss
            hsPkgs.gloss-rendering
          ];
        };
      };
    }