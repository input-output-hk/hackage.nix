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
      identifier = { name = "essence-of-live-coding"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "General purpose live coding framework";
      description = "essence-of-live-coding is a general purpose and type safe live coding framework.\n\nYou can run programs in it, and edit, recompile and reload them while they're running.\nInternally, the state of the live program is automatically migrated when performing hot code swap.\n\nThe library also offers an easy to use FRP interface.\nIt is parametrized by its side effects,\nseparates data flow cleanly from control flow,\nand allows to develop live programs from reusable, modular components.\nThere are also useful utilities for debugging and quickchecking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
        ];
        buildable = true;
      };
      exes = {
        "TestExceptions" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."essence-of-live-coding" or (errorHandler.buildDepError "essence-of-live-coding"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "essence-of-live-coding" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."essence-of-live-coding" or (errorHandler.buildDepError "essence-of-live-coding"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }