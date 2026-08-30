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
      identifier = { name = "moonlight-triangulation"; version = "1.4.0.4"; };
      license = "MIT";
      copyright = "(c) 2026 Blue Rose";
      maintainer = "rosaliafialkova@gmail.com";
      author = "Blue Rose";
      homepage = "https://github.com/PaleRoses/moonlight";
      url = "";
      synopsis = "Delaunay meshes and exact planar-region algebra.";
      description = "Delaunay and constrained Delaunay triangulation as a lawful\nfinite-set algebra, together with exact rational planar\nregions, labelled common refinement, intrinsic valuations,\nand polygonal Minkowski morphology. A mesh is a value of\nits site set, so\nunion, intersection and difference return triangulations\nand refinement composes after them rather than replacing\nthem. One structure-of-arrays half-edge mesh carries the\nconstrained and unconstrained layers. Private finite-DCEL\nand construction kernels own trusted representations and\nadmitted fast paths. Public dcel and build sublibraries\nexpose their lawful immutable observations, typed queries,\nconstruction, incremental edits, constraint recovery, and\nrefinement without duplicating those owners. Further opt-in\nsublibraries expose the exact scalar core, Voronoi and\nnatural-neighbour dual, bounded concurrent join interpreter,\nand versioned serialization surface beside the broad main\nfacade.\nOn GHC 9.14, a public cell-complex component interprets\nadmitted exact cell selections for Homology and Category\nand lowers exact Delaunay alpha filtrations into persistent\nhomology.\nFailure is values: every refusal names its witness.";
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
          (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
          (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
          (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
          (hsPkgs."moonlight-triangulation".components.sublibs.overlay-internal or (errorHandler.buildDepError "moonlight-triangulation:overlay-internal"))
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
        "dcel-internal" = {
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
        "dcel" = {
          depends = [
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
          ];
          buildable = true;
        };
        "cell-complex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "build-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
          ];
          buildable = true;
        };
        "build" = {
          depends = [
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
          ];
          buildable = true;
        };
        "parallel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
          ];
          buildable = true;
        };
        "overlay-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
          ];
          buildable = true;
        };
        "ffi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
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
        "moonlight-triangulation-ffi-contract" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."moonlight-triangulation".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-triangulation:ffi"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-delaunay-compare" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
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
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.simplicial or (errorHandler.buildDepError "moonlight-category:simplicial"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-category or (errorHandler.buildDepError "moonlight-homology:cell-category"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-triangulation:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "moonlight-triangulation-persistence-rose" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-triangulation:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "moonlight-triangulation-spade-referent" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-alpha-spade-referent" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-triangulation:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
          ];
          buildable = true;
        };
      };
      tests = {
        "moonlight-triangulation-cell-complex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-triangulation:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "moonlight-triangulation-examples-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-exact-planar-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-public-components-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-persistence-rose-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-triangulation:cell-complex"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
            (hsPkgs."moonlight-triangulation".components.sublibs.overlay-internal or (errorHandler.buildDepError "moonlight-triangulation:overlay-internal"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
            (hsPkgs."moonlight-triangulation".components.sublibs.overlay-internal or (errorHandler.buildDepError "moonlight-triangulation:overlay-internal"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."moonlight-triangulation".components.sublibs.serialize or (errorHandler.buildDepError "moonlight-triangulation:serialize"))
            (hsPkgs."moonlight-triangulation".components.sublibs.parallel or (errorHandler.buildDepError "moonlight-triangulation:parallel"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "moonlight-triangulation-alpha-bench" = {
          depends = [
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
            (hsPkgs."moonlight-triangulation".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-triangulation:cell-complex"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "moonlight-triangulation-power-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-layer-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-build-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-dual-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-publication-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-region-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-triangulation:dcel-internal"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-triangulation:build-internal"))
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