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
      specVersion = "1.18";
      identifier = { name = "hmatrix-sundials"; version = "0.19.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz 2018, Novadiscovery 2018";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz";
      homepage = "https://github.com/idontgetoutmuch/hmatrix/tree/sundials";
      url = "";
      synopsis = "hmatrix interface to sundials";
      description = "An interface to the solving suite SUNDIALS. Currently, it\nmimics the solving interface in hmstrix-gsl but\nprovides more diagnostic information and the\nButcher Tableaux (for Runge-Kutta methods).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
        libs = [
          (pkgs."sundials_arkode" or (errorHandler.sysDepError "sundials_arkode"))
          ];
        buildable = true;
        };
      tests = {
        "hmatrix-sundials-testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."plots" or (errorHandler.buildDepError "plots"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-rasterific" or (errorHandler.buildDepError "diagrams-rasterific"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          libs = [
            (pkgs."sundials_arkode" or (errorHandler.sysDepError "sundials_arkode"))
            ];
          buildable = true;
          };
        };
      };
    }