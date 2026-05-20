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
      specVersion = "1.10";
      identifier = { name = "satplus"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "koen@chalmers.se";
      author = "Koen Claessen";
      homepage = "https://github.com/koengit/satplus/";
      url = "";
      synopsis = "Useful functions when programming with a SAT-solver";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."minisat" or (errorHandler.buildDepError "minisat"))
        ];
        buildable = true;
      };
    };
  }