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
      identifier = { name = "razom-text-util"; version = "0.1.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/razom-text-util/";
      url = "";
      synopsis = "Common text/parsing tools for Razom language packages.";
      description = "This is a library of utilities for writing code that\nhandles semantic information documents (text files). It is\nmainly intended for collecting common tools used by the\nRazom information language libraries, but can be used by\nany text related package which needs these tools.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."smaoin" or (errorHandler.buildDepError "smaoin"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-position" or (errorHandler.buildDepError "text-position"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."razom-text-util" or (errorHandler.buildDepError "razom-text-util"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."smaoin" or (errorHandler.buildDepError "smaoin"))
          ];
          buildable = true;
        };
      };
    };
  }