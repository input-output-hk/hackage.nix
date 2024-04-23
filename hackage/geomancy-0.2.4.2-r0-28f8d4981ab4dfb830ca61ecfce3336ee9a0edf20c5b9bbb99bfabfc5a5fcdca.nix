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
      identifier = { name = "geomancy"; version = "0.2.4.2"; };
      license = "BSD-3-Clause";
      copyright = "2021 Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "";
      url = "";
      synopsis = "Geometry and matrix manipulation";
      description = "Sometimes it is unavoidable you have to do stuff on CPU.\nLet's at least do it faster.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
        ];
        buildable = true;
      };
      tests = {
        "geomancy-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."geomancy" or (errorHandler.buildDepError "geomancy"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "geomancy-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."geomancy" or (errorHandler.buildDepError "geomancy"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
          ];
          buildable = true;
        };
      };
    };
  }