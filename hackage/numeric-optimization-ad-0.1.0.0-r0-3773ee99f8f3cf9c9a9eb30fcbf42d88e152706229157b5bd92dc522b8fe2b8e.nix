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
      specVersion = "1.12";
      identifier = { name = "numeric-optimization-ad"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Masahiro Sakai &lt;masahiro.sakai@gmail.com&gt;";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/numeric-optimization-ad#readme";
      url = "";
      synopsis = "Wrapper of numeric-optimization package for using with AD package";
      description = "Please see the README on GitHub at <https://github.com/msakai/nonlinear-optimization-ad/tree/master/numeric-optimization-ad#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."numeric-optimization" or (errorHandler.buildDepError "numeric-optimization"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "rosenbrock-ad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."numeric-optimization" or (errorHandler.buildDepError "numeric-optimization"))
            (hsPkgs."numeric-optimization-ad" or (errorHandler.buildDepError "numeric-optimization-ad"))
            ];
          buildable = true;
          };
        };
      tests = {
        "numeric-optimization-ad-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."numeric-optimization" or (errorHandler.buildDepError "numeric-optimization"))
            (hsPkgs."numeric-optimization-ad" or (errorHandler.buildDepError "numeric-optimization-ad"))
            ];
          buildable = true;
          };
        };
      };
    }