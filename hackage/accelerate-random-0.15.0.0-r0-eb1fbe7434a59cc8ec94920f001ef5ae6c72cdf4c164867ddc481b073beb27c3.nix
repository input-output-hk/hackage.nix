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
        name = "accelerate-random";
        version = "0.15.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Generate Accelerate arrays filled with high quality pseudorandom numbers";
      description = "Generate /Accelerate/ arrays filled with high-quality pseudorandom numbers.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>\n";
      buildType = "Simple";
    };
    components = {
      "accelerate-random" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.mwc-random)
        ];
      };
    };
  }