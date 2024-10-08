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
      specVersion = "2.0";
      identifier = { name = "timer-wheel"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/timer-wheel";
      url = "";
      synopsis = "A timer wheel";
      description = "This library provides a timer wheel data structure for\n\n* /O(1)/ registering @IO@ actions to fire after a given amount of time\n* /O(1)/ canceling registered actions\n\nIt is similar to @TimerManager@ from \"GHC.Event\", but can scale much better\nunder concurrent access patterns.\n\nAn unreleased version of this library has a @backpack@-based signature for\nselecting from a variety of different data structures used internally.\nHowever, until @backpack@ has broader support on Hackage, and in Haddocks,\netc, I decided to just hard-code something decent (a priority search queue).\nThis makes the @O(1)@ claims above a bit of a lie, as these rely on using a\nlinked list data structure internally.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.4")) (hsPkgs."clock" or (errorHandler.buildDepError "clock"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."timer-wheel" or (errorHandler.buildDepError "timer-wheel"))
          ];
          buildable = true;
        };
      };
    };
  }