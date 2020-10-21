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
      identifier = { name = "flashblast"; version = "0.0.4.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Generate language learning flashcards from video.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."co-log-polysemy" or (errorHandler.buildDepError "co-log-polysemy"))
          (hsPkgs."co-log-polysemy-formatting" or (errorHandler.buildDepError "co-log-polysemy-formatting"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-dhall-instance" or (errorHandler.buildDepError "path-dhall-instance"))
          (hsPkgs."path-utils" or (errorHandler.buildDepError "path-utils"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."polysemy-video" or (errorHandler.buildDepError "polysemy-video"))
          (hsPkgs."polysemy-zoo" or (errorHandler.buildDepError "polysemy-zoo"))
          (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."subtitleParser" or (errorHandler.buildDepError "subtitleParser"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
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
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."co-log-polysemy" or (errorHandler.buildDepError "co-log-polysemy"))
            (hsPkgs."co-log-polysemy-formatting" or (errorHandler.buildDepError "co-log-polysemy-formatting"))
            (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."flashblast" or (errorHandler.buildDepError "flashblast"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-dhall-instance" or (errorHandler.buildDepError "path-dhall-instance"))
            (hsPkgs."path-utils" or (errorHandler.buildDepError "path-utils"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-video" or (errorHandler.buildDepError "polysemy-video"))
            (hsPkgs."polysemy-zoo" or (errorHandler.buildDepError "polysemy-zoo"))
            (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."subtitleParser" or (errorHandler.buildDepError "subtitleParser"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
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