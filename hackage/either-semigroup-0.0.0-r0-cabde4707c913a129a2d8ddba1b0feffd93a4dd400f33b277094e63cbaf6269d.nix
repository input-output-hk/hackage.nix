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
      identifier = { name = "either-semigroup"; version = "0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "2024 Melanie Phoenix Brown";
      maintainer = "brown.m@pm.me";
      author = "Melanie Phoenix Brown";
      homepage = "https://github.com/mixphix/either-semigroup#readme";
      url = "";
      synopsis = "Either with a stricter Semigroup instance";
      description = "A version of `Either` whose `Semigroup` instance requires a `Semigroup` in the `Left` argument.\nUnlike most `Validation` packages, this package does not depend on the entire Kmettverse, preferring a small dependency tree.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }