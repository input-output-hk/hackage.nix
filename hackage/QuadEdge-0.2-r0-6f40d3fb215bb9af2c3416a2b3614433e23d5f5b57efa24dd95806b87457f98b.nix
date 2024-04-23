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
      identifier = { name = "QuadEdge"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "NHAlxr@gmail.com";
      author = "Neal Alexander";
      homepage = "";
      url = "";
      synopsis = "QuadEdge structure for representing triangulations";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }