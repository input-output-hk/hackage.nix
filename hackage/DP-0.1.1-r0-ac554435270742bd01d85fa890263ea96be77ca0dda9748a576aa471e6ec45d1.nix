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
      specVersion = "1.2";
      identifier = { name = "DP"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<srush at mit dot edu>";
      author = "Sasha Rush";
      homepage = "http://github.com/srush/SemiRings/tree/master";
      url = "";
      synopsis = "Pragmatic framework for dynamic programming  ";
      description = "This module provides a simple declarative framework for dynamic programming optimization.\nUsers specify a dynamic programming problem as a simple haskell function that looks very similar to\nmathematical recursion used in texts. The specification is then translated into a form that can be\nsolved efficiently by a modular solver. Includes solvers using memoization,\nstrict and lazy ordered tables, and recursion with a range of data structures for the underlying table.\nThis method also separates processing steps like pruning and debugging from the recursion itself, and\nthis package contains preliminary tools for beam search and tracing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."list-tries" or (errorHandler.buildDepError "list-tries"))
          (hsPkgs."semiring" or (errorHandler.buildDepError "semiring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }