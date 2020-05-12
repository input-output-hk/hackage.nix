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
      identifier = { name = "dump"; version = "0.2.8"; };
      license = "MIT";
      copyright = "";
      maintainer = "dumplibhs.psssst@dfgh.net";
      author = "Milán Nagy";
      homepage = "https://github.com/Wizek/dump";
      url = "";
      synopsis = "Dumps the names and values of expressions to ease debugging.";
      description = "Can be used with \"Debug.Trace\", \"Test.QuickCheck\", or just\nplain old \"System.IO\"'s \"putStrLn\".\n\nSee README.md and FEATURES.md for further details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
            (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }