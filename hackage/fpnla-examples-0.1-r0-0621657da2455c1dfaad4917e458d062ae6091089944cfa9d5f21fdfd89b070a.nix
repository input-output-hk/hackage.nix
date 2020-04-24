{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."fpnla" or ((hsPkgs.pkgs-errors).buildDepError "fpnla"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."linear-algebra-cblas" or ((hsPkgs.pkgs-errors).buildDepError "linear-algebra-cblas"))
          (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
          ];
        buildable = true;
        };
      tests = {
        "test-fpnla-blas" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."fpnla" or ((hsPkgs.pkgs-errors).buildDepError "fpnla"))
            (hsPkgs."fpnla-examples" or ((hsPkgs.pkgs-errors).buildDepError "fpnla-examples"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."linear-algebra-cblas" or ((hsPkgs.pkgs-errors).buildDepError "linear-algebra-cblas"))
            (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
            ];
          buildable = true;
          };
        "test-fpnla-lapack" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."fpnla" or ((hsPkgs.pkgs-errors).buildDepError "fpnla"))
            (hsPkgs."fpnla-examples" or ((hsPkgs.pkgs-errors).buildDepError "fpnla-examples"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."linear-algebra-cblas" or ((hsPkgs.pkgs-errors).buildDepError "linear-algebra-cblas"))
            (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
            ];
          buildable = true;
          };
        };
      };
    }