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
      identifier = { name = "srtree"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Fabricio Olivetti de França";
      maintainer = "fabricio.olivetti@gmail.com";
      author = "Fabricio Olivetti de França";
      homepage = "https://github.com/folivetti/srtree#readme";
      url = "";
      synopsis = "A general framework to work with Symbolic Regression expression trees.";
      description = "A Symbolic Regression Tree data structure to work with mathematical expressions with support to first order derivative and simplification;";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "srtree-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."srtree" or (errorHandler.buildDepError "srtree"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }