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
      identifier = { name = "termbox-banana"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2024 Mitchell Dalvi Rosen, Travis Staton";
      maintainer = "Mitchell Dalvi Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Dalvi Rosen";
      homepage = "https://github.com/awkward-squad/termbox";
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
      exes = {
        "termbox-banana-example-quick-start" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."termbox-banana" or (errorHandler.buildDepError "termbox-banana"))
          ];
          buildable = if !flags.build-examples then false else true;
        };
      };
    };
  }