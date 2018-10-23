{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gloss-raster-accelerate";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Parallel rendering of raster images using Accelerate";
      description = "Parallel rendering of raster images using Accelerate";
      buildType = "Simple";
    };
    components = {
      "gloss-raster-accelerate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.colour-accelerate)
          (hsPkgs.gloss)
          (hsPkgs.gloss-accelerate)
        ];
      };
    };
  }