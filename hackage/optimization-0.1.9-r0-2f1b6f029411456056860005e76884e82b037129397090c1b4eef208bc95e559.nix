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
      identifier = { name = "optimization"; version = "0.1.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Ben Gamari";
      maintainer = "Ben Gamari <bgamari@gmail.com>";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/optimization";
      url = "";
      synopsis = "Numerical optimization";
      description = "These are a set of implementations of various numerical optimization\nmethods in Haskell. Note that these implementations were originally\nwritten as part of a class project; while at one point they worked\nno attention has been given to numerical stability or the many other\npotential difficulties of implementing robust numerical\nmethods. That being said, they should serve to succinctly illustrate\na number of optimization techniques from the modern optimization\nliterature.\n\nThose seeking a high-level overview of some of these methods are\nreferred to Stephen Wright's excellent tutorial from NIPS 2010\n<http://videolectures.net/nips2010_wright_oaml/>. A deeper\nintroduction can be found in Boyd and Vandenberghe's /Convex\nOptimization/ which available freely online,\n<http://web.stanford.edu/~boyd/cvxbook/>. Vandenberghe's lecture\nat the 2009 Machine Learning Summer School may also be of interest\n<http://videolectures.net/mlss09uk_vandenberghe_co/>.";
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