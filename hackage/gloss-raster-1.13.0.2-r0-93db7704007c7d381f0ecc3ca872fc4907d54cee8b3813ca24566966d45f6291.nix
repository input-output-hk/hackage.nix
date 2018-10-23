{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gloss-raster";
        version = "1.13.0.2";
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