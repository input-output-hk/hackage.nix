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
      identifier = { name = "jacobi-elliptic"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/jacobi-elliptic#readme";
      url = "";
      synopsis = "Neville Theta Functions and Jacobi Elliptic Functions";
      description = "Evaluation of the Neville theta functions and the Jacobi elliptic functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jacobi-theta" or (errorHandler.buildDepError "jacobi-theta"))
          (hsPkgs."elliptic-integrals" or (errorHandler.buildDepError "elliptic-integrals"))
        ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."jacobi-elliptic" or (errorHandler.buildDepError "jacobi-elliptic"))
            (hsPkgs."elliptic-integrals" or (errorHandler.buildDepError "elliptic-integrals"))
          ];
          buildable = true;
        };
      };
    };
  }