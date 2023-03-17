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
      identifier = { name = "timer-wheel"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2023, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/timer-wheel";
      url = "";
      synopsis = "A timer wheel";
      description = "This library provides a timer wheel data structure for\n\n* (Almost) /O(1)/ registering @IO@ actions to fire after a given amount of time\n* /O(1)/ canceling registered actions\n\nIt is similar to @TimerManager@ from @GHC.Event@, but supports recurring\ntimers, can scale to handle many more registered timers.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."timer-wheel" or (errorHandler.buildDepError "timer-wheel"))
            ];
          buildable = true;
          };
        };
      };
    }