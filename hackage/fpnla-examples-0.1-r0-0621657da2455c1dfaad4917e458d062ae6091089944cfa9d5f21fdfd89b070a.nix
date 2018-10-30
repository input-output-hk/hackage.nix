{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fpnla-examples";
        version = "0.1";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.accelerate)
          (hsPkgs.fpnla)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.hmatrix)
          (hsPkgs.repa)
          (hsPkgs.vector)
          (hsPkgs.linear-algebra-cblas)
          (hsPkgs.monad-par)
        ];
      };
      tests = {
        "test-fpnla-blas" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.data-default)
            (hsPkgs.tagged)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.fpnla)
            (hsPkgs.fpnla-examples)
            (hsPkgs.deepseq)
            (hsPkgs.accelerate)
            (hsPkgs.array)
            (hsPkgs.parallel)
            (hsPkgs.hmatrix)
            (hsPkgs.repa)
            (hsPkgs.vector)
            (hsPkgs.linear-algebra-cblas)
            (hsPkgs.monad-par)
          ];
        };
        "test-fpnla-lapack" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.data-default)
            (hsPkgs.tagged)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.fpnla)
            (hsPkgs.fpnla-examples)
            (hsPkgs.deepseq)
            (hsPkgs.accelerate)
            (hsPkgs.array)
            (hsPkgs.parallel)
            (hsPkgs.hmatrix)
            (hsPkgs.repa)
            (hsPkgs.vector)
            (hsPkgs.linear-algebra-cblas)
            (hsPkgs.monad-par)
          ];
        };
      };
    };
  }