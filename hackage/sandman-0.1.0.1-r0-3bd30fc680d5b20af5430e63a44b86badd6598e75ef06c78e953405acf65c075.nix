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
      identifier = { name = "sandman"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2015 Abhinav Gupta";
      maintainer = "mail@abhinavg.net";
      author = "Abhinav Gupta";
      homepage = "https://github.com/abhinav/sandman";
      url = "";
      synopsis = "Manages Cabal sandboxes to avoid rebuilding packages.";
      description = "sandman aims to reduce the amount of time spent rebuilding commonly used\nHackage packages by managing a global set of Cabal sandboxes that can be\nmixed into any project's Cabal sandbox.\n\nFor more information, check the\n<https://github.com/abhinav/sandman/blob/master/README.md README>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sandman" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          ];
          buildable = true;
        };
      };
    };
  }