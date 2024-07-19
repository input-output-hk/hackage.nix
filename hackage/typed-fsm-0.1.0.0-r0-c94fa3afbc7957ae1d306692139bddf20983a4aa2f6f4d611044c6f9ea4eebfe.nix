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
    flags = { buildexample = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "typed-fsm"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "shangdizhixia1993@163.com";
      author = "sdzx-1";
      homepage = "";
      url = "";
      synopsis = "A framework for strongly typed FSM";
      description = "FSM stands for [Finite State Machine](https://en.wikipedia.org/wiki/Finite-state_machine).\nThe typed-fsm is used to define and execute FSM.\n\nAdvantages of type-fsm:\n\n* Focus on the right message.\n* Top-to-bottom design for easy refactoring.\n* Conducive to building complex state machine systems:\n** Type guarantees will not produce incorrect function calls when written.\n** With the help of the type system, we can define many state processing functions and then call each other recursively with confidence.\n* There is a sanity check. If you miss some items for pattern matching, the compiler will issue a warning, and there will also be a warning for invalid items.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
        ];
        buildable = true;
      };
      exes = {
        "motion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-fsm" or (errorHandler.buildDepError "typed-fsm"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
          ];
          buildable = if !flags.buildexample then false else true;
        };
        "atm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-fsm" or (errorHandler.buildDepError "typed-fsm"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
          ];
          buildable = if !flags.buildexample then false else true;
        };
        "turnstile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-fsm" or (errorHandler.buildDepError "typed-fsm"))
            (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
          ];
          buildable = if !flags.buildexample then false else true;
        };
      };
    };
  }