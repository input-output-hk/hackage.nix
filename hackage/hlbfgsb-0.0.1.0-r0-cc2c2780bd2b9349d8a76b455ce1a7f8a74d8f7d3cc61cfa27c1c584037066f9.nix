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
      identifier = { name = "hlbfgsb"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan@hlbfgsb.ksp.sk";
      author = "Ivan Labáth";
      homepage = "http://people.ksp.sk/~ivan/hlbfgsb";
      url = "";
      synopsis = "Haskell binding to L-BFGS-B version 3.0";
      description = "Haskell bindings to Nocedal's 3.0 version\nof the Limited memory - Broyden Fletcher Goldfarb Shanno - Bounded\noptimization algorithm.\n\nInitial version, but functional. So far no support for limiting iteration\ncount. A more powerful interface should be developed.\n\nNotice: The fortran code is marked pure, althugh it tends to write\nto standard output at troubled times (should be fixed at some point in time).\n\nFrom homepage:\nSoftware for Large-scale Bound-constrained Optimization L-BFGS-B is a\nlimited-memory quasi-Newton code for bound-constrained optimization, i.e.\nfor problems where the only constraints are of the form l <= x <= u. The\ncurrent release is version 3.0. The distribution file was last changed on\n2011-08-02.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [ (pkgs."gfortran" or (errorHandler.sysDepError "gfortran")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.gfortran.components.exes.gfortran or (pkgs.pkgsBuildBuild.gfortran or (errorHandler.buildToolDepError "gfortran:gfortran")))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hlbfgsb" or (errorHandler.buildDepError "hlbfgsb"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }