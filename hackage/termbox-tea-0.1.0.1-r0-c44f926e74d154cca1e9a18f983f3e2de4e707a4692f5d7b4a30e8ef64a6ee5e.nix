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
    flags = { build-examples = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "termbox-tea"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2023 Mitchell Rosen, Travis Staton";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/awkward-squad/termbox";
      url = "";
      synopsis = "termbox + The Elm Architecture";
      description = "This package provides an Elm Architecture interface to @termbox@ programs.\n\nSee also:\n\n* @<https://hackage.haskell.org/package/termbox-banana termbox-banana>@ for a @reactive-banana@ FRP interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."termbox" or (errorHandler.buildDepError "termbox"))
          (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
          ];
        buildable = true;
        };
      exes = {
        "termbox-example-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
            (hsPkgs."termbox-tea" or (errorHandler.buildDepError "termbox-tea"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }