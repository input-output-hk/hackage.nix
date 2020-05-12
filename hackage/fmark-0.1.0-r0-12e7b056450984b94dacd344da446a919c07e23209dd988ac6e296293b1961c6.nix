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
      specVersion = "1.8";
      identifier = { name = "fmark"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "José Lopes <jabolopes@gmail.com>";
      author = "José Lopes";
      homepage = "http://github.com/jabolopes/fmark";
      url = "";
      synopsis = "A Friendly Markup language without syntax.";
      description = "Fmark (Friendly Markup) is a very simple markup language without\nsyntax and simple but sophisticated document styling, capable of\nproducing PDF and XML files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
            ];
          buildable = true;
          };
        };
      };
    }