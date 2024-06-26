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
      specVersion = "1.6";
      identifier = { name = "trace-call"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bram@typlab.com";
      author = "Bram Schuur";
      homepage = "";
      url = "";
      synopsis = "functions for logging the arguments and results of function calls";
      description = "trace-call provides generic functions for logging the arguments and results of function calls ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }