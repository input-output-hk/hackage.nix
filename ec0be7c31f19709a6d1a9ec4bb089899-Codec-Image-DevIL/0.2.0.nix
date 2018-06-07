{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Codec-Image-DevIL";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "";
        url = "";
        synopsis = "An FFI interface to the DevIL library";
        description = "Provides a very simple interface to the DevIL image library.\nProvides functions readImage and writeImage, which can read\nand write many image formats from/to an RGBA array of values\nto work with.";
        buildType = "Simple";
      };
      components = {
        Codec-Image-DevIL = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
          libs = [ pkgs.IL ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }