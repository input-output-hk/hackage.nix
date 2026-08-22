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
      identifier = { name = "moonlight-homology"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2026 Blue Rose";
      maintainer = "rosaliafialkova@gmail.com";
      author = "Blue Rose";
      homepage = "https://github.com/PaleRoses/moonlight";
      url = "";
      synopsis = "Chain complexes, phase-gated homology interfaces, and spectral scaffolding.";
      description = "Finite chain complexes, validated boundary matrices, field and Smith-normal-form rank backends, phase-gated Betti numbers and spectral sequences, discrete Morse reductions, and persistence helpers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
          (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-chain or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-chain"))
          (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-matrix or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-matrix"))
          (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-topology or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-topology"))
          (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-sequence or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-sequence"))
          (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
        ];
        buildable = true;
      };
      sublibs = {
        "moonlight-homology-chain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
          ];
          buildable = true;
        };
        "moonlight-homology-matrix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
            (hsPkgs."moonlight-pale".components.sublibs.diagnostic or (errorHandler.buildDepError "moonlight-pale:diagnostic"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-chain or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-chain"))
          ];
          buildable = true;
        };
        "cell-complex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
          ];
          buildable = true;
        };
        "cell-category" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
          ];
          buildable = true;
        };
        "moonlight-homology-topology" = {
          depends = [
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-carrier or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-carrier"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-domain or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-domain"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-sparse or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-sparse"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-spectral or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-spectral"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-chain or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-chain"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-matrix or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-matrix"))
          ];
          buildable = true;
        };
        "moonlight-homology-sequence" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-chain or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-chain"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-matrix or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-matrix"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-topology or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-topology"))
          ];
          buildable = true;
        };
        "moonlight-homology-laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-chain or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-chain"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-matrix or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-matrix"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-topology or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-topology"))
          ];
          buildable = true;
        };
      };
      tests = {
        "moonlight-homology-cell-category-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-category".components.sublibs.simplicial or (errorHandler.buildDepError "moonlight-category:simplicial"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-category or (errorHandler.buildDepError "moonlight-homology:cell-category"))
            (hsPkgs."moonlight-homology".components.sublibs.cell-complex or (errorHandler.buildDepError "moonlight-homology:cell-complex"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "moonlight-homology-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-pale".components.sublibs.diagnostic-ghc or (errorHandler.buildDepError "moonlight-pale:diagnostic-ghc"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-matrix or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-matrix"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-topology or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-topology"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-sequence or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-sequence"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-laws or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-laws"))
            (hsPkgs."moonlight-linalg".components.sublibs.moonlight-linalg-dense or (errorHandler.buildDepError "moonlight-linalg:moonlight-linalg-dense"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "moonlight-homology-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-homology" or (errorHandler.buildDepError "moonlight-homology"))
            (hsPkgs."moonlight-homology".components.sublibs.moonlight-homology-matrix or (errorHandler.buildDepError "moonlight-homology:moonlight-homology-matrix"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }