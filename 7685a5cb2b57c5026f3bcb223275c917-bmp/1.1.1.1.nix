{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bmp";
          version = "1.1.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benl@ouroborus.net";
        author = "Ben Lippmeier";
        homepage = "http://code.haskell.org/~benl/code/bmp-head";
        url = "";
        synopsis = "Read and write uncompressed BMP image files.";
        description = "Read and write uncompressed BMP image files. 100% robust Haskell implementation.";
        buildType = "Simple";
      };
      components = {
        "bmp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
      };
    }