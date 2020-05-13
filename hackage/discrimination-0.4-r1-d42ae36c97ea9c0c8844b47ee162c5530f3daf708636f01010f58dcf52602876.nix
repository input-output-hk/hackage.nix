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
      identifier = { name = "discrimination"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/discrimination/";
      url = "";
      synopsis = "Fast generic linear-time sorting, joins and container construction.";
      description = "This package provides fast, generic, linear-time discrimination and sorting.\n\nThe techniques applied are based on <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011a.pdf multiple> <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011c.pdf papers> and <https://www.youtube.com/watch?v=sz9ZlZIRDAg talks> by <http://www.diku.dk/hjemmesider/ansatte/henglein/ Fritz Henglein>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."promises" or (errorHandler.buildDepError "promises"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          ];
        buildable = true;
        };
      benchmarks = {
        "wordmap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."discrimination" or (errorHandler.buildDepError "discrimination"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ];
          buildable = true;
          };
        };
      };
    }