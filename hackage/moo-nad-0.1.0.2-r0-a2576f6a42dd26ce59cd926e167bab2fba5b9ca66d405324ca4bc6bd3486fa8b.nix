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
      specVersion = "3.0";
      identifier = { name = "moo-nad"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz Carrete";
      homepage = "";
      url = "";
      synopsis = "Invocation helpers for the ReaderT-record-of-functions style.";
      description = "Using a record-of-functions as the environment of some \nreader-like monad is a common way of structuring Haskell \napplications, somewhat resembling dependency injection in OOP.\n\nWe often want our program logic to be polymorphic over both the\nconcrete monad and the environment. One common solution is to\nabstract the monad using @MonadReader@, and abstract the environment\nusing @HasX@-style typeclasses.\n\nOne minor annoyance though is that invoking the function in the \nenvironment is often a bit cumbersome: you have to ask\nthe environment for the function, and then lift the result of\nthe function back into the reader-like monad.\n\nThis library supports a special twist on @ReaderT@-record-of-functions                     \nstyle: instead of depending only on typeclasses for abstraction, \nwe also use a module signature. This comes with different tradeoffs.\n\nOne benefit is that we support a simpler way of invoking functions from the\nenvironment, using a helper that takes care of both asking the environment\nand lifting function results, and which works uniformly for functions of any\narity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
          ];
        buildable = true;
        };
      sublibs = {
        "example-logic-that-logs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
            (hsPkgs."moo-nad" or (errorHandler.buildDepError "moo-nad"))
            ];
          buildable = true;
          };
        "example-impl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."dep-t" or (errorHandler.buildDepError "dep-t"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."moo-nad".components.sublibs.example-logic-that-logs or (errorHandler.buildDepError "moo-nad:example-logic-that-logs"))
            (hsPkgs."moo-nad".components.sublibs.example-impl or (errorHandler.buildDepError "moo-nad:example-impl"))
            ];
          buildable = true;
          };
        };
      };
    }