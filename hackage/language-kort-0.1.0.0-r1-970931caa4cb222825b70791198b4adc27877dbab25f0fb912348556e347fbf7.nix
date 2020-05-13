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
      identifier = { name = "language-kort"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/language-kort/";
      url = "";
      synopsis = "Parser and serializer for the Kort information language.";
      description = "This package provides a library containing all the\nnecessary tools for working with Kort files, allowing\nprograms to load and save semantic data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."razom-text-util" or (errorHandler.buildDepError "razom-text-util"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."smaoin" or (errorHandler.buildDepError "smaoin"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-position" or (errorHandler.buildDepError "text-position"))
          (hsPkgs."vocabulary-kadma" or (errorHandler.buildDepError "vocabulary-kadma"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."language-kort" or (errorHandler.buildDepError "language-kort"))
            (hsPkgs."smaoin" or (errorHandler.buildDepError "smaoin"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vocabulary-kadma" or (errorHandler.buildDepError "vocabulary-kadma"))
            ];
          buildable = true;
          };
        };
      };
    }