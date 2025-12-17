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
      identifier = { name = "th-cas"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "https://github.com/junjihashimoto/th-cas";
      url = "";
      synopsis = "Compile-time CAS(Computer Algebra System)";
      description = "th-cas is a Computer Algebra System (CAS) for Haskell that performs symbolic\nmathematics operations at compile-time using Template Haskell. It provides both\ninteractive usage (similar to Mathematica) and compile-time optimization for\nmathematical computations with zero runtime overhead.\n.\nFeatures include:\n.\n* Symbolic differentiation with automatic simplification\n.\n* Symbolic integration using the Risch-Norman heuristic algorithm\n.\n* Linear and polynomial equation solvers\n.\n* Gröbner basis computation for multivariate polynomial systems\n.\n* Pattern matching and coefficient extraction\n.\n* Compile-time code generation via Template Haskell\n.\nThe library supports polynomial operations (GCD, LCM, factorization),\ntrigonometric and exponential functions, and advanced algorithms including\nHermite reduction for rational functions and the Extended Euclidean algorithm.\n.\nWith 150+ test cases, th-cas provides reliable symbolic computation for\nboth runtime and compile-time mathematical operations in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."th-cas" or (errorHandler.buildDepError "th-cas"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }