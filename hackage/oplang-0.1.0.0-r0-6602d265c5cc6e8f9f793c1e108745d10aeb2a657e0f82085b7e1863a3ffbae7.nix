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
      identifier = { name = "oplang"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2019-2020 Alex Ionescu";
      maintainer = "alxi.2001@gmail.com";
      author = "Alex Ionescu";
      homepage = "https://github.com/aionescu/oplang#readme";
      url = "";
      synopsis = "Compiler for OpLang, an esoteric programming language";
      description = "Please see the README on GitHub at <https://github.com/aionescu/oplang#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "oplang" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }