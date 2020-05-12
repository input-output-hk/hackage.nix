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
      identifier = { name = "loops"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Thomas Tuegel 2014";
      maintainer = "ttuegel@gmail.com";
      author = "Thomas Tuegel";
      homepage = "";
      url = "";
      synopsis = "Fast imperative-style loops";
      description = "@loops@ is a library for fast, imperative-style loops in Haskell. Performance\nis robust because there is no reliance on fusion. @do@-notation nests loops,\nproviding syntax cleaner than manual recursion. A class @ForEach@ is provided\nenabling iteration over common container types.\n\nFor best performance, please compile your code with @-O2@. You should also\nuse GHC's LLVM backend if possible; it generally produces faster executables.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."loops" or (errorHandler.buildDepError "loops"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."loops" or (errorHandler.buildDepError "loops"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }