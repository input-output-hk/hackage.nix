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
      specVersion = "2.4";
      identifier = { name = "regression-simple"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "";
      homepage = "https://github.com/phadej/regression-simple";
      url = "";
      synopsis = "Simple linear and quadratic regression";
      description = "A simple package with a module for\n\n* linear and quadratic regression\n\n* linear and quadratic zeros formula\n\n* some 2d and 3d linear algebra\n\nAll specialized to @Double@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "generate-test-data" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            ];
          buildable = true;
          };
        "regression-simple-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regression-simple" or (errorHandler.buildDepError "regression-simple"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.4") [
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            ]) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }