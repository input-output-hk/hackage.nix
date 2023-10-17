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
      identifier = { name = "weierstrass-functions"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/weierstrass-functions#readme";
      url = "";
      synopsis = "Weierstrass Elliptic Functions";
      description = "Evaluation of Weierstrass elliptic functions and some related functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jacobi-theta" or (errorHandler.buildDepError "jacobi-theta"))
          (hsPkgs."elliptic-integrals" or (errorHandler.buildDepError "elliptic-integrals"))
          (hsPkgs."gamma" or (errorHandler.buildDepError "gamma"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."weierstrass-functions" or (errorHandler.buildDepError "weierstrass-functions"))
            (hsPkgs."gamma" or (errorHandler.buildDepError "gamma"))
            ];
          buildable = true;
          };
        };
      };
    }