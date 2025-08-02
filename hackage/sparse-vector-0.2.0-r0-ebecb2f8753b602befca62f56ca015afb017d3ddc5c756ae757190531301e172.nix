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
      specVersion = "3.0";
      identifier = { name = "sparse-vector"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "";
      url = "";
      synopsis = "Sparse vector data structures";
      description = "Sparse vector data structures";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "sparse-vector" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sparse-vector" or (errorHandler.buildDepError "sparse-vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "sparse-vector-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sparse-vector" or (errorHandler.buildDepError "sparse-vector"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }