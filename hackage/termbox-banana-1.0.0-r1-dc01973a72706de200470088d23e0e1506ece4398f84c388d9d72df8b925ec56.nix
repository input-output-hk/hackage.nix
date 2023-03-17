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
      identifier = { name = "termbox-banana"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2023, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/termbox/termbox-haskell";
      url = "";
      synopsis = "termbox + reactive-banana";
      description = "This package provides a @reactive-banana@ FRP interface to @termbox@ programs.\n\nSee also:\n\n* @<https://hackage.haskell.org/package/termbox-tea termbox-tea>@ for an Elm Architecture interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
          (hsPkgs."termbox" or (errorHandler.buildDepError "termbox"))
          ];
        buildable = true;
        };
      };
    }