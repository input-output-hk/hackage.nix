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
      specVersion = "1.2";
      identifier = { name = "hs-pgms"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Bertram Felgenhauer";
      maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Programmer's Mine Sweeper in Haskell";
      description = "This package allows people to code Minesweeper strategies in Haskell\nand run them in a graphical UI.\nInspired by <http://www.ccs.neu.edu/home/ramsdell/pgms/index.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "mine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MonadPrompt" or (errorHandler.buildDepError "MonadPrompt"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }