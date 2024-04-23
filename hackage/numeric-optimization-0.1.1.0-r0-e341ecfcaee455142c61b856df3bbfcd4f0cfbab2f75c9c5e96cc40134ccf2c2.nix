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
    flags = {
      build-examples = false;
      with-cg-descent = false;
      with-lbfgs = true;
      with-lbfgsb = false;
    };
    package = {
      specVersion = "1.12";
      identifier = { name = "numeric-optimization"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2023 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/nonlinear-optimization-ad#readme";
      url = "";
      synopsis = "Unified interface to various numerical optimization algorithms";
      description = "Please see the README on GitHub at <https://github.com/msakai/nonlinear-optimization-ad/tree/master/numeric-optimization#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."numeric-limits" or (errorHandler.buildDepError "numeric-limits"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (flags.with-cg-descent) (hsPkgs."nonlinear-optimization" or (errorHandler.buildDepError "nonlinear-optimization"))) ++ pkgs.lib.optional (flags.with-lbfgs) (hsPkgs."lbfgs" or (errorHandler.buildDepError "lbfgs"))) ++ pkgs.lib.optional (flags.with-lbfgsb) (hsPkgs."l-bfgs-b" or (errorHandler.buildDepError "l-bfgs-b"));
        buildable = true;
      };
      exes = {
        "rosenbrock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."numeric-optimization" or (errorHandler.buildDepError "numeric-optimization"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.build-examples then true else false;
        };
      };
      tests = {
        "numeric-optimization-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."numeric-optimization" or (errorHandler.buildDepError "numeric-optimization"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }