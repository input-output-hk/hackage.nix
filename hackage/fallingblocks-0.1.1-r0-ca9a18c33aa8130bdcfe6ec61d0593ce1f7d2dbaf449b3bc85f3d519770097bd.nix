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
      specVersion = "0";
      identifier = { name = "fallingblocks"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 by Ben Sanders";
      maintainer = "Ben Sanders <bwsanders@gmail.com>";
      author = "Ben Sanders";
      homepage = "";
      url = "";
      synopsis = "A fun falling blocks game.";
      description = "A game where blocks of different shapes fall down the screen.  If you\neither fill an entire line or get four of the same color in a row,\nthose disappear.  How long can you go before the blocks fill the screen?";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fallingblocks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
            ];
          buildable = true;
          };
        };
      };
    }