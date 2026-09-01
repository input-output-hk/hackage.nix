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
      identifier = { name = "moonlight-planar"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "(c) 2026 Blue Rose";
      maintainer = "rosaliafialkova@gmail.com";
      author = "Blue Rose";
      homepage = "https://github.com/PaleRoses/moonlight";
      url = "";
      synopsis = "Native hex regions, Delaunay meshes, and exact planar algebra.";
      description = "Native packed hexagonal cell regions and Delaunay and\nconstrained Delaunay triangulation as lawful\nfinite-set algebras, together with exact rational planar\nregions, labelled common refinement, intrinsic valuations,\nand polygonal Minkowski morphology. A mesh is a value of\nits site set, so\nunion, intersection and difference return triangulations\nand refinement composes after them rather than replacing\nthem. One structure-of-arrays half-edge mesh carries the\nconstrained and unconstrained layers. Private finite-DCEL\nand construction kernels own trusted representations and\nadmitted fast paths. Public dcel and build sublibraries\nexpose their lawful immutable observations, typed queries,\nconstruction, incremental edits, constraint recovery, and\nrefinement without duplicating those owners. Further opt-in\nsublibraries expose the exact scalar core, Voronoi and\nnatural-neighbour dual, bounded concurrent join interpreter,\nand versioned serialization surface beside the broad main\nfacade. The dependency-light hex component provides axial\nelements, arithmetic neighbours, wordwise Boolean algebra,\nrestriction, and overlap-compatible gluing without DCEL or\npolygon construction.\nOn GHC 9.14, a public cell-complex component interprets\nadmitted exact cell selections for Homology and Category\nand lowers exact Delaunay alpha filtrations into persistent\nhomology; an opt-in zigzag component tracks exact topology\nacross independently sampled, non-nested labelled depths.\nFailure is values: every refusal names its witness.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."moonlight-planar".components.sublibs.hex or (errorHandler.buildDepError "moonlight-planar:hex"))
          (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
          (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
          (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
          (hsPkgs."moonlight-planar".components.sublibs.dual or (errorHandler.buildDepError "moonlight-planar:dual"))
          (hsPkgs."moonlight-planar".components.sublibs.overlay-internal or (errorHandler.buildDepError "moonlight-planar:overlay-internal"))
          (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
        "hex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "storage-internal" = {
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
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
          ];
          buildable = true;
        };
        "dcel" = {
          depends = [
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
          ];
          buildable = true;
        };
        "cell-complex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
            (hsPkgs."moonlight-planar".components.sublibs.hex or (errorHandler.buildDepError "moonlight-planar:hex"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "zigzag" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-planar".components.sublibs.build or (errorHandler.buildDepError "moonlight-planar:build"))
            (hsPkgs."moonlight-planar".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-planar:cell-complex"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-planar:dcel"))
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
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
          ];
          buildable = true;
        };
        "build" = {
          depends = [
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
          ];
          buildable = true;
        };
        "parallel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
          ];
          buildable = true;
        };
        "serialize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar".components.sublibs.hex or (errorHandler.buildDepError "moonlight-planar:hex"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
          ];
          buildable = true;
        };
        "dual" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
          ];
          buildable = true;
        };
        "overlay-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
          ];
          buildable = true;
        };
        "ffi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
          ];
          buildable = true;
        };
      };
      foreignlibs = {
        "moonlight-triangulation-c" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-planar".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-planar:ffi"))
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
            (hsPkgs."moonlight-planar".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-planar:ffi"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-delaunay-compare" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
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
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
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
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-planar:cell-complex"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
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
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-planar:cell-complex"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dual or (errorHandler.buildDepError "moonlight-planar:dual"))
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
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dual or (errorHandler.buildDepError "moonlight-planar:dual"))
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
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-planar:cell-complex"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
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
            (hsPkgs."moonlight-planar".components.sublibs.hex or (errorHandler.buildDepError "moonlight-planar:hex"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-planar:cell-complex"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "moonlight-triangulation-zigzag-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-planar:dcel"))
            (hsPkgs."moonlight-planar".components.sublibs.zigzag or (errorHandler.buildDepError "moonlight-planar:zigzag"))
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
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-exact-planar-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-public-components-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-planar:dcel"))
            (hsPkgs."moonlight-planar".components.sublibs.build or (errorHandler.buildDepError "moonlight-planar:build"))
          ];
          buildable = true;
        };
        "moonlight-planar-hex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.hex or (errorHandler.buildDepError "moonlight-planar:hex"))
            (hsPkgs."moonlight-planar".components.sublibs.serialize or (errorHandler.buildDepError "moonlight-planar:serialize"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-persistence-rose-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-planar:cell-complex"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dual or (errorHandler.buildDepError "moonlight-planar:dual"))
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
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dual or (errorHandler.buildDepError "moonlight-planar:dual"))
            (hsPkgs."moonlight-planar".components.sublibs.overlay-internal or (errorHandler.buildDepError "moonlight-planar:overlay-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-serialization-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.serialize or (errorHandler.buildDepError "moonlight-planar:serialize"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-algebra-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-parallel-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-planar".components.sublibs.parallel or (errorHandler.buildDepError "moonlight-planar:parallel"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-ffi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-planar".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-planar:ffi"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-coherence-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dual or (errorHandler.buildDepError "moonlight-planar:dual"))
            (hsPkgs."moonlight-planar".components.sublibs.overlay-internal or (errorHandler.buildDepError "moonlight-planar:overlay-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."moonlight-planar".components.sublibs.serialize or (errorHandler.buildDepError "moonlight-planar:serialize"))
            (hsPkgs."moonlight-planar".components.sublibs.parallel or (errorHandler.buildDepError "moonlight-planar:parallel"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "moonlight-triangulation-alpha-bench" = {
          depends = [
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-planar:cell-complex"))
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
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-layer-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
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
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-planar:ffi"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-dcel-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-dual-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.dual or (errorHandler.buildDepError "moonlight-planar:dual"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-join-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-publication-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-region-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
          ];
          buildable = true;
        };
        "moonlight-planar-hex-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-planar".components.sublibs.hex or (errorHandler.buildDepError "moonlight-planar:hex"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-planar" or (errorHandler.buildDepError "moonlight-planar"))
            (hsPkgs."moonlight-planar".components.sublibs.dcel-internal or (errorHandler.buildDepError "moonlight-planar:dcel-internal"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-planar".components.sublibs.build-internal or (errorHandler.buildDepError "moonlight-planar:build-internal"))
            (hsPkgs."moonlight-planar".components.sublibs.ffi or (errorHandler.buildDepError "moonlight-planar:ffi"))
            (hsPkgs."moonlight-planar".components.sublibs.dual or (errorHandler.buildDepError "moonlight-planar:dual"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-planar".components.sublibs.core or (errorHandler.buildDepError "moonlight-planar:core"))
            (hsPkgs."moonlight-planar".components.sublibs.storage-internal or (errorHandler.buildDepError "moonlight-planar:storage-internal"))
          ];
          buildable = true;
        };
      };
    };
  }