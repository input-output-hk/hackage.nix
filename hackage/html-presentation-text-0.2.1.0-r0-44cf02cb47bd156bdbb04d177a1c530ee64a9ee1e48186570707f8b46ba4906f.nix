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
      identifier = { name = "html-presentation-text"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "2022 Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "";
      url = "";
      synopsis = "Simple tool to create html presentation for text.";
      description = "The idea is to post some colored text on the background.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "htmlpt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lists-flines" or (errorHandler.buildDepError "lists-flines"))
            (hsPkgs."cli-arguments" or (errorHandler.buildDepError "cli-arguments"))
            ];
          buildable = true;
          };
        };
      };
    }