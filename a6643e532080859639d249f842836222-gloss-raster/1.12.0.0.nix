{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      llvm = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gloss-raster";
        version = "1.12.0.0";
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
      "gloss-raster" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.gloss)
          (hsPkgs.gloss-rendering)
          (hsPkgs.repa)
        ];
      };
    };
  }