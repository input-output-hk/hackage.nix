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
      specVersion = "2.0";
      identifier = { name = "jira-wiki-markup"; version = "1.3.5"; };
      license = "MIT";
      copyright = "© 2019–2021 Albert Krewinkel";
      maintainer = "tarleb@zeitkraut.de";
      author = "Albert Krewinkel";
      homepage = "https://github.com/tarleb/jira-wiki-markup";
      url = "";
      synopsis = "Handle Jira wiki markup";
      description = "Parse jira wiki text into an abstract syntax tree for easy\ntransformation to other formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "jira-wiki-markup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."jira-wiki-markup" or (errorHandler.buildDepError "jira-wiki-markup"))
            ];
          buildable = true;
          };
        };
      tests = {
        "jira-wiki-markup-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jira-wiki-markup" or (errorHandler.buildDepError "jira-wiki-markup"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }