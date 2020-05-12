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
      identifier = { name = "riff"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Robert Massaioli         ";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "https://bitbucket.org/robertmassaioli/riff/overview";
      url = "";
      synopsis = "RIFF parser for Haskell";
      description = "This library provides a RIFF parser for Haskell for easy manipulation\nof common file formats like WAVE and RIFF container AVI files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "riff-structure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."riff" or (errorHandler.buildDepError "riff"))
            ];
          buildable = true;
          };
        "riff-identity" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."riff" or (errorHandler.buildDepError "riff"))
            ];
          buildable = true;
          };
        "riff-convert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."riff" or (errorHandler.buildDepError "riff"))
            ];
          buildable = true;
          };
        };
      };
    }