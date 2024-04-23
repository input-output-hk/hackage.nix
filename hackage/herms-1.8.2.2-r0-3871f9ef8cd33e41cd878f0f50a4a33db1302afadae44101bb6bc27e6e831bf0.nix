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
      identifier = { name = "herms"; version = "1.8.2.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jack.c.kiefer@gmail.com";
      author = "Jack Kiefer";
      homepage = "https://github.com/JackKiefer/herms";
      url = "";
      synopsis = "A command-line manager for delicious kitchen recipes";
      description = "HeRM's: a Haskell-based Recipe Manager for delicious kitchen recipes";
      buildType = "Simple";
    };
    components = {
      exes = {
        "herms" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
          buildable = true;
        };
      };
    };
  }