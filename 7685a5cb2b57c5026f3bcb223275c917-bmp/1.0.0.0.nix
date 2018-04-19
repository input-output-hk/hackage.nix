{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bmp";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benl@ouroborus.net";
        author = "Ben Lippmeier";
        homepage = "http://code.haskell.org/~benl/code/bmp-head";
        url = "";
        synopsis = "Read and write uncompressed 24bit BMP image files.";
        description = "Read and write uncompressed 24bit BMP image files. 100% robust Haskell implementation.";
        buildType = "Simple";
      };
      components = {
        bmp = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.QuickCheck
          ];
        };
      };
    }