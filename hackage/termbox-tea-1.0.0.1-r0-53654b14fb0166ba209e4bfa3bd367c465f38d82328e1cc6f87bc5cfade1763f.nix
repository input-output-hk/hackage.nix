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
      identifier = { name = "termbox-tea"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2025 Mitchell Dalvi Rosen, Travis Staton";
      maintainer = "Mitchell Dalvi Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Dalvi Rosen, Travis Staton";
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
        "termbox-tea-example-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
            (hsPkgs."termbox-tea" or (errorHandler.buildDepError "termbox-tea"))
          ];
          buildable = if !flags.build-examples then false else true;
        };
        "termbox-tea-example-quick-start" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termbox-tea" or (errorHandler.buildDepError "termbox-tea"))
          ];
          buildable = if !flags.build-examples then false else true;
        };
      };
    };
  }