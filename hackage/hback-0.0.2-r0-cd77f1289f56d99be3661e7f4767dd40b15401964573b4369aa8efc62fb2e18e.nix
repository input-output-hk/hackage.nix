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
      specVersion = "1.0";
      identifier = { name = "hback"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      author = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      homepage = "http://pithyless.com/blog/2008/05/18/hback-haskell-n-back-memory-game/";
      url = "";
      synopsis = "N-back memory game";
      description = "N-back memory game using gtk2hs.\n\nInstructions on installation and gameplay available at:\n<http://pithyless.com/blog/2008/05/18/hback-haskell-n-back-memory-game/>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hback" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          ];
          buildable = true;
        };
      };
    };
  }