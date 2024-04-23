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
      specVersion = "1.0";
      identifier = { name = "GuiHaskell"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/guihaskell/";
      url = "";
      synopsis = "A graphical REPL and development environment for Haskell";
      description = "GuiHaskell aims to be a cross-platform development environment\nfor Haskell that is integrated with other popular Haskell tools.\nThe program uses the PropLang GUI combinator library to declaratively\ndefine the relationships between UI elements and data.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "guihaskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."proplang" or (errorHandler.buildDepError "proplang"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }