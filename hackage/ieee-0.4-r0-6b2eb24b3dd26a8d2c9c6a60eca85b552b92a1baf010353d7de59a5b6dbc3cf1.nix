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
      identifier = { name = "ieee"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://stat.stanford.edu/~patperry/code/ieee";
      url = "";
      synopsis = "Approximate comparisons for IEEE floating point numbers";
      description = "Approximate comparison of floating point numbers based on the\nalgorithm in Section 4.2.2 of Knuth's _Seminumerical Algorithms_,\nNaN-aware minimum and maximum, and a type class for approximate\ncomparisons.\n";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }