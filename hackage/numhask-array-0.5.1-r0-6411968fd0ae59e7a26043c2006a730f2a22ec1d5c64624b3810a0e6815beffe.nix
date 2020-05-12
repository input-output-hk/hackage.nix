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
      identifier = { name = "numhask-array"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask-array#readme";
      url = "";
      synopsis = "n-dimensional arrays";
      description = "n-dimensional arrays founded on numhask.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."numhask-prelude" or (errorHandler.buildDepError "numhask-prelude"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."numhask-array" or (errorHandler.buildDepError "numhask-array"))
            (hsPkgs."numhask-prelude" or (errorHandler.buildDepError "numhask-prelude"))
            (hsPkgs."numhask-hedgehog" or (errorHandler.buildDepError "numhask-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }