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
      identifier = { name = "introduction-test"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/introduction";
      url = "";
      synopsis = "A prelude for the tests of safe new projects";
      description = "A prelude for the tests of safe new projects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."introduction" or (errorHandler.buildDepError "introduction"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-containers" or (errorHandler.buildDepError "genvalidity-containers"))
          (hsPkgs."genvalidity-text" or (errorHandler.buildDepError "genvalidity-text"))
          (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
          ];
        buildable = true;
        };
      };
    }