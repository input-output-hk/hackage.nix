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
      identifier = { name = "html-presentation-text"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2022 Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "";
      url = "";
      synopsis = "Simple tool to create html presentation for text.";
      description = "The html and css template is taken from different tutorials in the Internet (with changes). The idea is to post some text on the background partially transparent image.";
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