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
      identifier = { name = "agda2train"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2023 Orestis Melkonian";
      maintainer = "melkon.or@gmail.com";
      author = "Orestis Melkonian";
      homepage = "http://github.com/omelkonian/agda2train/";
      url = "";
      synopsis = "Agda backend to generate training data for machine learning purposes.";
      description = "-";
      buildType = "Simple";
      };
    components = {
      exes = {
        "agda2train" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Agda" or (errorHandler.buildDepError "Agda"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            ];
          buildable = true;
          };
        };
      };
    }