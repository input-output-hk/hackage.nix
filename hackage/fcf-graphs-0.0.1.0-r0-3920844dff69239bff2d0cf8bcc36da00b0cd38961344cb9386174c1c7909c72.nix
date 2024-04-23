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
      specVersion = "1.12";
      identifier = { name = "fcf-graphs"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Type-level version of algebraic-graphs.";
      description = "Type-level version of algebraic-graphs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fcf-containers" or (errorHandler.buildDepError "fcf-containers"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
        ];
        buildable = true;
      };
      tests = {
        "fcf-graph-test" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."fcf-containers" or (errorHandler.buildDepError "fcf-containers"))
            (hsPkgs."fcf-graphs" or (errorHandler.buildDepError "fcf-graphs"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          ];
          buildable = true;
        };
      };
    };
  }