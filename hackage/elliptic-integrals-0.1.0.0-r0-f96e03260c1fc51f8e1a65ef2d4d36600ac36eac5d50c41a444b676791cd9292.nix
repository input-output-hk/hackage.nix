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
      identifier = { name = "elliptic-integrals"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/elliptic-integrals#readme";
      url = "";
      synopsis = "Carlson Elliptic Integrals and Incomplete Elliptic Integrals";
      description = "Evaluation of the Carlson elliptic integrals and the incomplete elliptic integrals with complex arguments.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."elliptic-integrals" or (errorHandler.buildDepError "elliptic-integrals"))
          ];
          buildable = true;
        };
      };
    };
  }