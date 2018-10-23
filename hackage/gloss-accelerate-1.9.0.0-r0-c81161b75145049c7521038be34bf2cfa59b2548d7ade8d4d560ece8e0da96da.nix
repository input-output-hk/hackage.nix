{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { cuda = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gloss-accelerate";
        version = "1.9.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tmcdonell@cse.unsw.edu.au";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Extras to interface Gloss and Accelerate";
      description = "Extras to interface Gloss and Accelerate";
      buildType = "Simple";
    };
    components = {
      "gloss-accelerate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.gloss)
          (hsPkgs.gloss-rendering)
        ];
      };
    };
  }