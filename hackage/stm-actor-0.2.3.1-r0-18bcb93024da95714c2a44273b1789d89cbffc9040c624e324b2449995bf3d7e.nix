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
      identifier = { name = "stm-actor"; version = "0.2.3.1"; };
      license = "MIT";
      copyright = "2020 Samuel Schlesinger";
      maintainer = "samuel@simspace.com";
      author = "Samuel Schlesinger";
      homepage = "";
      url = "";
      synopsis = "A simplistic actor model based on STM";
      description = "A simplistic actor model based on STM.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-queue" or (errorHandler.buildDepError "stm-queue"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
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