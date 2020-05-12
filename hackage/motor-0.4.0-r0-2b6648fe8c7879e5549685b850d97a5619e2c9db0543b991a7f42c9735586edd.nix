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
      specVersion = "1.10";
      identifier = { name = "motor"; version = "0.4.0"; };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Type-safe effectful state machines in Haskell";
      description = "/Motor/ is an experimental Haskell library for building finite-state\nmachines with type-safe transitions and effects. It draws inspiration\nfrom the Idris [ST\n](http://docs.idris-lang.org/en/latest/st/state.html) library. See the\n\"Motor.FSM\" module for documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."indexed" or (errorHandler.buildDepError "indexed"))
          (hsPkgs."indexed-extras" or (errorHandler.buildDepError "indexed-extras"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "example-door" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."indexed" or (errorHandler.buildDepError "indexed"))
            (hsPkgs."indexed-extras" or (errorHandler.buildDepError "indexed-extras"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
            (hsPkgs."motor" or (errorHandler.buildDepError "motor"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."indexed" or (errorHandler.buildDepError "indexed"))
            (hsPkgs."indexed-extras" or (errorHandler.buildDepError "indexed-extras"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
            (hsPkgs."motor" or (errorHandler.buildDepError "motor"))
            ];
          buildable = true;
          };
        };
      };
    }