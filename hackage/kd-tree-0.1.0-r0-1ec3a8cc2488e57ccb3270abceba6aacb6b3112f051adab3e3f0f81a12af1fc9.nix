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
      identifier = { name = "kd-tree"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari <bgamari@gmail.com>";
      maintainer = "bgamari@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/kd-tree";
      url = "";
      synopsis = "A simple k-d tree implementation";
      description = "A simple k-d tree implementation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      };
    }