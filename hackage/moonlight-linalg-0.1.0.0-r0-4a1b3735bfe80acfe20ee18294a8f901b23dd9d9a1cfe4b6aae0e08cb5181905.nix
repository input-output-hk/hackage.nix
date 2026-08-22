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
      specVersion = "3.0";
      identifier = { name = "moonlight-linalg"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2026 Blue Rose";
      maintainer = "rosaliafialkova@gmail.com";
      author = "Blue Rose";
      homepage = "https://github.com/PaleRoses/moonlight";
      url = "";
      synopsis = "Dense tensor and algebraic matrix core for Pale Meridian.";
      description = "Typed dense and sparse matrices, GF(2) and Smith-normal-form backends, symmetry-indexed operators, and restarted Krylov and Lanczos spectral solvers over a typed shape-and-domain failure vocabulary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
          (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
          (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-domain or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-domain"))
          (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-geometry or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-geometry"))
          (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-sparse or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-sparse"))
          (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-spectral or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-spectral"))
          (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-statics or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-statics"))
        ];
        buildable = true;
      };
      sublibs = {
        "moonlight-linalg-carrier" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-linalg-structured" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-linalg-eigen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-linalg-geometry" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-linalg-dense" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-eigen or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-eigen"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-linalg-domain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-linalg-sparse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-structured or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-structured"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-linalg-statics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-geometry or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-geometry"))
          ];
          buildable = true;
        };
        "moonlight-linalg-spectral" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-eigen or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-eigen"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-sparse or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-sparse"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-structured or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-structured"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-linalg-native" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-eigen or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-eigen"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-spectral or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-spectral"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-structured or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-structured"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          libs = pkgs.lib.optionals (!system.isOsx) [
            (pkgs."lapack" or (errorHandler.sysDepError "lapack"))
            (pkgs."blas" or (errorHandler.sysDepError "blas"))
          ];
          frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Accelerate" or (errorHandler.sysDepError "Accelerate"));
          buildable = true;
        };
        "moonlight-linalg-laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg" or (errorHandler.buildDepError "moonlight-linalg"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-eigen or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-eigen"))
            (hsPkgs."moonlight-pale".components.sublibs.test-laws or (errorHandler.buildDepError "moonlight-pale:test-laws"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "moonlight-linalg-laws-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-laws or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-laws"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
        "moonlight-linalg-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-linalg" or (errorHandler.buildDepError "moonlight-linalg"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-domain or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-domain"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-eigen or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-eigen"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-native or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-native"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-sparse or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-sparse"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-spectral or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-spectral"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-structured or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-structured"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "moonlight-linalg-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-linalg" or (errorHandler.buildDepError "moonlight-linalg"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-native or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-native"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-spectral or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-spectral"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-structured or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-structured"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }