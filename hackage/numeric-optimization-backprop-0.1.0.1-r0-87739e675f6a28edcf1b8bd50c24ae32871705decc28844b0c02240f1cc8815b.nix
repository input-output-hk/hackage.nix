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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "numeric-optimization-backprop";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2023 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/nonlinear-optimization-ad#readme";
      url = "";
      synopsis = "Wrapper of numeric-optimization package for using with backprop package";
      description = "Please see the README on GitHub at <https://github.com/msakai/nonlinear-optimization-ad/tree/master/numeric-optimization-backprop#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."numeric-optimization" or (errorHandler.buildDepError "numeric-optimization"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "rosenbrock-backprop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."numeric-optimization" or (errorHandler.buildDepError "numeric-optimization"))
            (hsPkgs."numeric-optimization-backprop" or (errorHandler.buildDepError "numeric-optimization-backprop"))
          ];
          buildable = if flags.build-examples then true else false;
        };
      };
      tests = {
        "numeric-optimization-backprop-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."numeric-optimization" or (errorHandler.buildDepError "numeric-optimization"))
            (hsPkgs."numeric-optimization-backprop" or (errorHandler.buildDepError "numeric-optimization-backprop"))
          ];
          buildable = true;
        };
      };
    };
  }