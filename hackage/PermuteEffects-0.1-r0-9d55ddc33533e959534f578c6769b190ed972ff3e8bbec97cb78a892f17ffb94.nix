{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "PermuteEffects";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "";
      url = "";
      synopsis = "Permutations of effectful computations";
      description = "";
      buildType = "Simple";
    };
    components = {
      "PermuteEffects" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }