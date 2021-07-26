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
      identifier = { name = "srt-dhall"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Dhall Encoder/Decoder for SRT.";
      description = "Dhall Encoder/Decoder for SRT.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."simple-media-timestamp" or (errorHandler.buildDepError "simple-media-timestamp"))
          (hsPkgs."simple-media-timestamp-formatting" or (errorHandler.buildDepError "simple-media-timestamp-formatting"))
          (hsPkgs."srt" or (errorHandler.buildDepError "srt"))
          (hsPkgs."srt-attoparsec" or (errorHandler.buildDepError "srt-attoparsec"))
          (hsPkgs."srt-formatting" or (errorHandler.buildDepError "srt-formatting"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }