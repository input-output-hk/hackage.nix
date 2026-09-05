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
    flags = { examples = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "pure-cdt"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025-2026 Alex Elyukov";
      maintainer = "alexelyukov@gmail.com";
      author = "Alex Elyukov";
      homepage = "https://github.com/alexelyukov/triangulation#readme";
      url = "";
      synopsis = "Constrained Delaunay triangulation and mesh refinement in 2D, in pure Haskell";
      description = "Delaunay triangulation of a set of points in the plane, computed by divide\nand conquer and parallelised with @Control.Parallel.Strategies@; constrained\ntriangulation of a polygon with holes, where the boundary edges are forced\ninto the triangulation and the triangles outside the region are dropped;\nDelaunay refinement (Ruppert's algorithm) to a minimum angle and a maximum\ntriangle area; and an indexed mesh (node coordinates, index triples,\nboundary edges) for finite element code.\n\nEverything is written in Haskell, with a pure API and no bindings to a C or\nC++ library, so the package builds wherever GHC does.\n\nThe geometric predicates (orientation, in-circle, segment crossing) are\nexact: a floating-point filter decides the easy cases and @Rational@\narithmetic the rest, so collinear and cocircular inputs are handled\ncorrectly.\n\nStart with the \"Triangulation\" module. Please see the README on GitHub at\n<https://github.com/alexelyukov/triangulation#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "pure-cdt-examples" = {
          depends = [
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."Rasterific" or (errorHandler.buildDepError "Rasterific"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pure-cdt" or (errorHandler.buildDepError "pure-cdt"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "pure-cdt-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."pure-cdt" or (errorHandler.buildDepError "pure-cdt"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "pure-cdt-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pure-cdt" or (errorHandler.buildDepError "pure-cdt"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
        "pure-cdt-scaling" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."pure-cdt" or (errorHandler.buildDepError "pure-cdt"))
          ];
          buildable = true;
        };
      };
    };
  }