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
    flags = { build_lapacke = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "jalla"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2011-2012, Christian Gosch";
      maintainer = "Christian Gosch <github@goschs.de>";
      author = "Christian Gosch";
      homepage = "https://github.com/cgo/jalla";
      url = "";
      synopsis = "Higher level functions for linear algebra. Wraps BLAS and LAPACKE.";
      description = "NOTE: Hackage does not know LAPACKE, therefore jalla and the documentation\nare not built there. You can find its documentation at\n<http://www.goschs.de/jalla>.\n\nJalla aims at providing high level functions for linear algebra computations which\nshould be fast and easy enough to use. Under the hood, BLAS and LAPACKE are used\n(LAPACKE is a standard C interface to LAPACK which is part of LAPACK since version 3.4).\n\nThe modules Numeric.Jalla.Matrix and Numeric.Jalla.Vector are probably\nthe most useful ones for users. Everything under Numeric.Jalla.Foreign\nis basically wrapping stuff.\n\nCurrently, I am adding new functions whenever I find some time. Please help, if you want to!\nThere are not many tests yet, and we need some nicer error reporting (nicer than exceptions).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        libs = [
          (pkgs."lapacke" or (errorHandler.sysDepError "lapacke"))
          (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
          (pkgs."cblas" or (errorHandler.sysDepError "cblas"))
          (pkgs."f77blas" or (errorHandler.sysDepError "f77blas"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jalla" or (errorHandler.buildDepError "jalla"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }