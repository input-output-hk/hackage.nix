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
      specVersion = "1.18";
      identifier = { name = "gemmula-altera"; version = "2.1.1"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Sena <jn-sena@proton.me>";
      author = "Sena <jn-sena@proton.me>";
      homepage = "https://codeberg.org/sena/gemmula/src/commit/2fbca325abf875db71739a4242fe181de8a84cf6";
      url = "";
      synopsis = "A tiny gemtext converter for gemmula";
      description = "gemmula-altera is a tiny gemtext converter, built on the gemmula library.\nIt provides simple encodings for Markdown and HTML, plus a tiny\ncommand line helper.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."gemmula" or (errorHandler.buildDepError "gemmula"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
        ];
        buildable = true;
      };
      exes = {
        "gemalter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."gemmula" or (errorHandler.buildDepError "gemmula"))
            (hsPkgs."gemmula-altera" or (errorHandler.buildDepError "gemmula-altera"))
          ];
          buildable = true;
        };
      };
      tests = {
        "gemmulae-alterius-probatio" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."gemmula" or (errorHandler.buildDepError "gemmula"))
            (hsPkgs."gemmula-altera" or (errorHandler.buildDepError "gemmula-altera"))
          ];
          buildable = true;
        };
      };
    };
  }