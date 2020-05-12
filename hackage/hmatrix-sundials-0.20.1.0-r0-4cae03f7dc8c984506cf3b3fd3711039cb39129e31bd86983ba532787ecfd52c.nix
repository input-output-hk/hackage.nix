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
      identifier = { name = "hmatrix-sundials"; version = "0.20.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz 2018, Novadiscovery 2018";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz";
      homepage = "https://github.com/haskell-numerics/hmatrix-sundials";
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
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        libs = [
          (pkgs."sundials_arkode" or (errorHandler.sysDepError "sundials_arkode"))
          (pkgs."sundials_cvode" or (errorHandler.sysDepError "sundials_cvode"))
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
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."hmatrix-sundials" or (errorHandler.buildDepError "hmatrix-sundials"))
            (hsPkgs."plots" or (errorHandler.buildDepError "plots"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-rasterific" or (errorHandler.buildDepError "diagrams-rasterific"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hmatrix-sundials" or (errorHandler.buildDepError "hmatrix-sundials"))
            ];
          libs = [
            (pkgs."sundials_arkode" or (errorHandler.sysDepError "sundials_arkode"))
            (pkgs."sundials_cvode" or (errorHandler.sysDepError "sundials_cvode"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."hmatrix-sundials" or (errorHandler.buildDepError "hmatrix-sundials"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }