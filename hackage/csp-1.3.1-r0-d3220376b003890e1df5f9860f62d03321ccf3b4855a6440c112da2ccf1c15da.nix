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
      identifier = { name = "csp"; version = "1.3.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Andrei Barbu <andrei@0xab.com>";
      author = "Andrei Barbu <andrei@0xab.com>";
      homepage = "";
      url = "";
      synopsis = "Discrete constraint satisfaction problem (CSP) solver.";
      description = "Constraint satisfaction problem (CSP) solvers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."nondeterminism" or (errorHandler.buildDepError "nondeterminism"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."nondeterminism" or (errorHandler.buildDepError "nondeterminism"))
            (hsPkgs."csp" or (errorHandler.buildDepError "csp"))
          ];
          buildable = true;
        };
      };
    };
  }