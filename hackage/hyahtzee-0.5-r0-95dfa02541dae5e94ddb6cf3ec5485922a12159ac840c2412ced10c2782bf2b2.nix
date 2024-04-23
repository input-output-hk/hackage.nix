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
      specVersion = "2.4";
      identifier = { name = "hyahtzee"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "damien.cassou@gmail.com";
      author = "Damien Cassou";
      homepage = "http://github.com/DamienCassou/HYahtzee";
      url = "";
      synopsis = "A Yahtzee game implementation in Haskell";
      description = "The classic dice game Yahtzee implemented in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hyahtzee" = {
          depends = [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }