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
      identifier = { name = "optimization"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Ben Gamari";
      maintainer = "Ben Gamari <bgamari@gmail.com>";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/optimization";
      url = "";
      synopsis = "Numerical optimization";
      description = "These are a set of implementations of various numerical optimization\nmethods in Haskell. Note that these implementations were originally\nwritten as part of a class project; while at one point they worked\nno attention has been given to numerical stability or the many other\npotential difficulties of implementing robust numerical\nmethods. That being said, they should serve to succinctly illustrate\na number of optimization techniques from the modern optimization\nliterature.\n\nA deep introduction to optimization can be found in Boyd and Vandenberghe's\n*Convex Optimization* which available freely online,\n(<http://web.stanford.edu/~boyd/cvxbook/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          ];
        buildable = true;
        };
      };
    }