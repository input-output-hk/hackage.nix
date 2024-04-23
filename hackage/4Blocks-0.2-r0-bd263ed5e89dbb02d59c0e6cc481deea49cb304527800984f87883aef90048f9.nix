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
      identifier = { name = "4Blocks"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "drewcalleja@gmail.com";
      author = "Andrew Calleja";
      homepage = "http://lambdacolyte.wordpress.com/2009/08/06/tetris-in-haskell/";
      url = "";
      synopsis = "A tetris-like game (works with GHC 6.8.3 and Gtk2hs 0.9.13)";
      description = "A tetris-like game implemented in Haskell and making use of Gtkh2s (works with GHC 6.8.3 and Gtk2hs 0.9.13)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "4Blocks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }