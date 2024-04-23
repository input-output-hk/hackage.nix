{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "PermuteEffects"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen, Sjoerd Visscher";
      homepage = "https://github.com/MedeaMelana/PermuteEffects";
      url = "";
      synopsis = "Permutations of effectful computations";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ReplicateEffects" or (errorHandler.buildDepError "ReplicateEffects"))
        ];
        buildable = true;
      };
    };
  }