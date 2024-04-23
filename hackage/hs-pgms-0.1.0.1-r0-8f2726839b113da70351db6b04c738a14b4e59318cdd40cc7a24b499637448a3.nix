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
    flags = { split-base = true; };
    package = {
      specVersion = "1.4";
      identifier = { name = "hs-pgms"; version = "0.1.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."MonadPrompt" or (errorHandler.buildDepError "MonadPrompt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
      exes = {
        "hs-pgms" = {
          depends = [
            (hsPkgs."MonadPrompt" or (errorHandler.buildDepError "MonadPrompt"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ] ++ (if flags.split-base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ]);
          buildable = true;
        };
      };
    };
  }