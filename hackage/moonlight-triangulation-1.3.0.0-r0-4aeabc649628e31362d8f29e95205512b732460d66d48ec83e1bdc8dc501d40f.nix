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
    flags = { warnings-as-errors = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "moonlight-triangulation"; version = "1.3.0.0"; };
      license = "MIT";
      copyright = "(c) 2026 Fable, Blue Rose";
      maintainer = "rosaliafialkova@gmail.com";
      author = "Fable, Blue Rose";
      homepage = "https://github.com/PaleRoses/moonlight";
      url = "";
      synopsis = "Delaunay meshes and exact planar-region algebra.";
      description = "Delaunay and constrained Delaunay triangulation as a lawful\nfinite-set algebra, together with exact rational planar\nregions, labelled common refinement, intrinsic valuations,\nand polygonal Minkowski morphology. A mesh is a value of\nits site set, so\nunion, intersection and difference return triangulations\nand refinement composes after them rather than replacing\nthem. One structure-of-arrays half-edge mesh carries the\nconstrained and unconstrained layers, split into public\nsublibraries by role: exact binary64 predicates and paged\nstorage; the finite DCEL with its handle,\niterator, location and validation surface; circle-sweep bulk\nload, incremental insertion, removal, conflict-strip\nconstraint recovery and Ruppert refinement; the Voronoi dual\nwith natural-neighbour interpolation and Delaunay hierarchy\nhints; a bounded-concurrency interpreter for the join\ntournament; and a versioned binary serialization surface.\nOn GHC 9.14, a public cell-complex component interprets\nadmitted exact cell selections for Homology and Category.\nFailure is values: every refusal names its witness.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
          (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
          (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
          (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
        ];
        buildable = true;
      };
      sublibs = {
        "core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "dcel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
          ];
          buildable = true;
        };
        "cell-complex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "build" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
          ];
          buildable = true;
        };
        "parallel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
          ];
          buildable = true;
        };
        "serialize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
          ];
          buildable = true;
        };
        "dual" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
          ];
          buildable = true;
        };
        "ffi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
          ];
          buildable = true;
        };
      };
      foreignlibs = {
        "moonlight-triangulation-c" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-triangulation".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-triangulation:ffi"))
          ];
          libs = pkgs.lib.optional (!system.isWindows) (pkgs."pthread" or (errorHandler.sysDepError "pthread"));
          buildable = true;
        };
      };
      exes = {
        "moonlight-triangulation-delaunay-compare" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-delaunay-pictures" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-category-observatory-export" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.simplicial or (errorHandler.buildDepError "moonlight-category:simplicial"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-category or (errorHandler.buildDepError "moonlight-homology:cell-category"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-triangulation:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
      };
      tests = {
        "moonlight-triangulation-cell-complex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-triangulation:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "moonlight-triangulation-native-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-serialization-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.serialize or (errorHandler.buildDepError "moonlight-triangulation:serialize"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-algebra-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-parallel-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-triangulation".components.sublibs.parallel or (errorHandler.buildDepError "moonlight-triangulation:parallel"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-ffi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-triangulation".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-triangulation:ffi"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-coherence-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."moonlight-triangulation".components.sublibs.serialize or (errorHandler.buildDepError "moonlight-triangulation:serialize"))
            (hsPkgs."moonlight-triangulation".components.sublibs.parallel or (errorHandler.buildDepError "moonlight-triangulation:parallel"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "moonlight-triangulation-build-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-triangulation:ffi"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-dcel-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-dual-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-join-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-publication-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-region-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-triangulation:ffi"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
          ];
          buildable = true;
        };
      };
    };
  }