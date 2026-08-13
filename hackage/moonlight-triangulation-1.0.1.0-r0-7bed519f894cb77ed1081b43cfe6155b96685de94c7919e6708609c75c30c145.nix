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
      identifier = { name = "moonlight-triangulation"; version = "1.0.1.0"; };
      license = "MIT";
      copyright = "(c) 2026 Fable, Blue Rose";
      maintainer = "rosaliafialkova@gmail.com";
      author = "Fable, Blue Rose";
      homepage = "https://github.com/PaleRoses/moonlight";
      url = "";
      synopsis = "Delaunay triangulations as a lawful finite-set algebra.";
      description = "Delaunay and constrained Delaunay triangulation as a lawful\nfinite-set algebra: a mesh is a value of its site set, so\nunion, intersection and difference return triangulations\nand refinement composes after them rather than replacing\nthem. One structure-of-arrays half-edge mesh carries the\nconstrained and unconstrained layers, split into public\nsublibraries by role: exact binary64 predicates and paged\nstorage; the finite DCEL with its handle,\niterator, location and validation surface; circle-sweep bulk\nload, incremental insertion, removal, conflict-strip\nconstraint recovery and Ruppert refinement; the Voronoi dual\nwith natural-neighbour interpolation and Delaunay hierarchy\nhints; a bounded-concurrency interpreter for the join\ntournament; and a versioned binary serialization surface.\nFailure is values: every refusal names its witness.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.core or (errorHandler.buildDepError "moonlight-triangulation:core"))
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
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
          ];
          buildable = true;
        };
        "ffi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
      tests = {
        "moonlight-triangulation-native-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
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
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."moonlight-triangulation".components.sublibs.serialize or (errorHandler.buildDepError "moonlight-triangulation:serialize"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-algebra-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
          ];
          buildable = true;
        };
        "moonlight-triangulation-parallel-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
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
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
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
        "moonlight-triangulation-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-triangulation" or (errorHandler.buildDepError "moonlight-triangulation"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dcel or (errorHandler.buildDepError "moonlight-triangulation:dcel"))
            (hsPkgs."moonlight-triangulation".components.sublibs.build or (errorHandler.buildDepError "moonlight-triangulation:build"))
            (hsPkgs."moonlight-triangulation".components.sublibs.dual or (errorHandler.buildDepError "moonlight-triangulation:dual"))
          ];
          buildable = true;
        };
      };
    };
  }