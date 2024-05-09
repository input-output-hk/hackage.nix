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
      specVersion = "2.2";
      identifier = { name = "pcubature"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2023-2024 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/pcubature#readme";
      url = "";
      synopsis = "Integration over convex polytopes";
      description = "Multiple integration over convex polytopes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."delaunayNd" or (errorHandler.buildDepError "delaunayNd"))
          (hsPkgs."hspray" or (errorHandler.buildDepError "hspray"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."scubature" or (errorHandler.buildDepError "scubature"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vertexenum" or (errorHandler.buildDepError "vertexenum"))
        ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."hspray" or (errorHandler.buildDepError "hspray"))
            (hsPkgs."pcubature" or (errorHandler.buildDepError "pcubature"))
          ];
          buildable = true;
        };
      };
    };
  }