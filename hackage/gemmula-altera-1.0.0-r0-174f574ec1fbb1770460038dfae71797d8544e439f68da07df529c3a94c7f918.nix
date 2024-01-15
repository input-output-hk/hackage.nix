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
      identifier = { name = "gemmula-altera"; version = "1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Sena <jn-sena@proton.me>";
      author = "Sena <jn-sena@proton.me>";
      homepage = "https://codeberg.org/sena/gemmula";
      url = "";
      synopsis = "A tiny Gemtext converter for gemmula";
      description = "gemmula-altera is a tiny Gemtext converter, built on gemmula library.\nIt provides simple encodings for Markdown and HTML.";
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