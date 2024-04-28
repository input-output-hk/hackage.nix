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
      specVersion = "3.0";
      identifier = { name = "kudzu"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shae@scannedinavian.com";
      author = "Shae Erisson";
      homepage = "https://github.com/shapr/kudzu";
      url = "";
      synopsis = "coverage driven random testing framework";
      description = "Kudzu is a coverage driven random testing framework";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
        ];
        buildable = true;
      };
      exes = {
        "kudzu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kudzu" or (errorHandler.buildDepError "kudzu"))
          ];
          buildable = true;
        };
      };
      tests = {
        "kudzu-test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }