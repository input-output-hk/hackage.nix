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
    flags = { useextensions = true; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "reactive-banana"; version = "0.8.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://wiki.haskell.org/Reactive-banana";
      url = "";
      synopsis = "Library for functional reactive programming (FRP).";
      description = "Reactive-banana is a library for Functional Reactive Programming (FRP).\n\nFRP offers an elegant and concise way to express interactive programs such as graphical user interfaces, animations, computer music or robot controllers. It promises to avoid the spaghetti code that is all too common in traditional approaches to GUI programming.\n\nSee the project homepage <http://wiki.haskell.org/Reactive-banana>\nfor more detailed documentation and examples.\n\n/Stability forecast:/\n\nNo semantic bugs expected.\n\nSignificant API changes are likely in future versions,\nthough the main interface is beginning to stabilize.\n\nThe library features an efficient, push-driven implementation\nand has seen some optimization work.\nHowever, the inner loop still has a rather large constant factor overhead.\nMoreover, there is currently /no/ garbage collection for events that are\ncreated dynamically with @Reactive.Banana.Switch@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
            (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
            ];
          buildable = true;
          };
        };
      };
    }