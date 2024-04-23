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
      specVersion = "2.4";
      identifier = { name = "stm-actor"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2020 Samuel Schlesinger";
      maintainer = "samuel@simspace.com";
      author = "Samuel Schlesinger";
      homepage = "";
      url = "";
      synopsis = "See the README";
      description = "See the README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-queue" or (errorHandler.buildDepError "stm-queue"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "stm-actor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-queue" or (errorHandler.buildDepError "stm-queue"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm-actor" or (errorHandler.buildDepError "stm-actor"))
          ];
          buildable = true;
        };
      };
    };
  }