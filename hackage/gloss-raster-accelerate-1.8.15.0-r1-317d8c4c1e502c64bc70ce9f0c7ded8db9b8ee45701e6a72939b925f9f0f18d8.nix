{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { cuda = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gloss-raster-accelerate";
        version = "1.8.15.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tmcdonell@cse.unsw.edu.au";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Parallel rendering of raster images using Accelerate";
      description = "Parallel rendering of raster images using Accelerate";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.gloss)
          (hsPkgs.gloss-accelerate)
        ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda);
      };
    };
  }