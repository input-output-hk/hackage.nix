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
      identifier = { name = "Hipmunk-Utils"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Suzumiya";
      maintainer = "suzumiyasmith@gmail.com";
      author = "Suzumiya";
      homepage = "https://github.com/suzumiyasmith/Hipmunk-Utils#readme";
      url = "";
      synopsis = "Useful functions for Hipmunk";
      description = "Pack some functions for Hipmunk using Linear package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Hipmunk" or (errorHandler.buildDepError "Hipmunk"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
        ];
        buildable = true;
      };
      tests = {
        "Hipmunk-Utils-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hipmunk-Utils" or (errorHandler.buildDepError "Hipmunk-Utils"))
          ];
          buildable = true;
        };
      };
    };
  }