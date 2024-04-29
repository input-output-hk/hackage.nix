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
      specVersion = "3.0";
      identifier = { name = "oplang"; version = "0.5.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2019-2024 Alex Ionescu";
      maintainer = "aaionescu@pm.me";
      author = "Alex Ionescu";
      homepage = "https://github.com/aionescu/oplang#readme";
      url = "";
      synopsis = "Stack-based esoteric programming language";
      description = "Please see the README on GitHub at <https://github.com/aionescu/oplang#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "oplang" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."monad-chronicle" or (errorHandler.buildDepError "monad-chronicle"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder-linear" or (errorHandler.buildDepError "text-builder-linear"))
          ];
          buildable = true;
        };
      };
    };
  }