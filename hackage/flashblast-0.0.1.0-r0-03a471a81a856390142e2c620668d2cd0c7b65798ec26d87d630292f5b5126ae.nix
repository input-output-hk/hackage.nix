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
      identifier = { name = "flashblast"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Generate lanuage learning flashcards from video.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-dhall-instance" or (errorHandler.buildDepError "path-dhall-instance"))
          (hsPkgs."path-utils" or (errorHandler.buildDepError "path-utils"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-video" or (errorHandler.buildDepError "polysemy-video"))
          (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."subtitleParser" or (errorHandler.buildDepError "subtitleParser"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          (hsPkgs."unliftio-path" or (errorHandler.buildDepError "unliftio-path"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
        ];
        buildable = true;
      };
      exes = {
        "flashblast" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."flashblast" or (errorHandler.buildDepError "flashblast"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-dhall-instance" or (errorHandler.buildDepError "path-dhall-instance"))
            (hsPkgs."path-utils" or (errorHandler.buildDepError "path-utils"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-video" or (errorHandler.buildDepError "polysemy-video"))
            (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."subtitleParser" or (errorHandler.buildDepError "subtitleParser"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."unliftio-path" or (errorHandler.buildDepError "unliftio-path"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
          buildable = true;
        };
      };
    };
  }