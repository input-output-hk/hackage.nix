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
      specVersion = "1.12";
      identifier = { name = "prune-juice"; version = "0.1"; };
      license = "MIT";
      copyright = "2020 Dan Fithian";
      maintainer = "Dan Fithian";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Prune unused Haskell dependencies";
      description = "Prune unused Haskell dependencies from a Stack/Hpack project";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "prune-juice" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prune-juice" or (errorHandler.buildDepError "prune-juice"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."file-path-th" or (errorHandler.buildDepError "file-path-th"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prune-juice" or (errorHandler.buildDepError "prune-juice"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }