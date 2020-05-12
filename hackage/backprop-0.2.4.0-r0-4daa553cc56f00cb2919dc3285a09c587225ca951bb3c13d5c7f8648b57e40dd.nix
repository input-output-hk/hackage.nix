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
      identifier = { name = "backprop"; version = "0.2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://backprop.jle.im";
      url = "";
      synopsis = "Heterogeneous automatic differentation";
      description = "Write your functions to compute your result, and the library will\nautomatically generate functions to compute your gradient.\n\nImplements heterogeneous reverse-mode automatic differentiation, commonly\nknown as \"backpropagation\".\n\nSee <https://backprop.jle.im> for official introduction and documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."simple-reflect" or (errorHandler.buildDepError "simple-reflect"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."type-combinators" or (errorHandler.buildDepError "type-combinators"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      benchmarks = {
        "backprop-mnist-bench" = {
          depends = [
            (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }