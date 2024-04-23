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
      specVersion = "1.8";
      identifier = { name = "fpnla-examples"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pablo Perdomo <pperdomo@fing.edu.uy>, Mauro Blanco <mblanco@fing.edu.uy>";
      author = "Pablo Perdomo, Mauro Blanco";
      homepage = "";
      url = "";
      synopsis = "Example implementations for FPNLA library";
      description = "\nThis package provides many example implementations of the operations defined in package @fpnla@ using various data structures and algorithms.\n\nIMPORTANT: Many algorithms are only partially implemented\n\nThe structures currently used are:\n\n- @hmatrix@ <http://hackage.haskell.org/package/hmatrix>\n\n- @vector@ <http://hackage.haskell.org/package/vector>\n\n- @array@ <http://hackage.haskell.org/package/array>\n\n- @repa arrays@ <http://hackage.haskell.org/package/repa>\n\n- @accelerate arrays@ <http://hackage.haskell.org/package/accelerate>\n\n- @array@ <http://hackage.haskell.org/package/array>\n\n- Haskell lists <http://hackage.haskell.org/package/base-4.6.0.1/docs/Data-List.html>\n\nOperations are parallelized using the @parallel@ framework (<http://hackage.haskell.org/package/parallel>), @Monad-Par@ (<http://hackage.haskell.org/package/monad-par>), @Repa@ (<http://hackage.haskell.org/package/repa>) and @Accelerate@ (<http://hackage.haskell.org/package/accelerate>).\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."fpnla" or (errorHandler.buildDepError "fpnla"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."linear-algebra-cblas" or (errorHandler.buildDepError "linear-algebra-cblas"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
        ];
        buildable = true;
      };
      tests = {
        "test-fpnla-blas" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."fpnla" or (errorHandler.buildDepError "fpnla"))
            (hsPkgs."fpnla-examples" or (errorHandler.buildDepError "fpnla-examples"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."linear-algebra-cblas" or (errorHandler.buildDepError "linear-algebra-cblas"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          ];
          buildable = true;
        };
        "test-fpnla-lapack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."fpnla" or (errorHandler.buildDepError "fpnla"))
            (hsPkgs."fpnla-examples" or (errorHandler.buildDepError "fpnla-examples"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."linear-algebra-cblas" or (errorHandler.buildDepError "linear-algebra-cblas"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          ];
          buildable = true;
        };
      };
    };
  }