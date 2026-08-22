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
      specVersion = "3.4";
      identifier = { name = "moonlight-category"; version = "0.1.0.1"; };
      license = "MIT AND BSD-3-Clause";
      copyright = "(c) 2026 Blue Rose";
      maintainer = "rosaliafialkova@gmail.com";
      author = "Blue Rose";
      homepage = "https://github.com/PaleRoses/moonlight";
      url = "";
      synopsis = "Categorical layer for Pale Meridian.";
      description = "A totalised, explicit-error category abstraction: limits and colimits, a\nhigher-category class tower, runtime-validated finite categories (@FinCat@),\nsite and path presentations, adhesive and PBPO rewriting witnesses, structured\ncospans and double categories, an indexed typed-arrow layer, and a simplicial\nsublibrary for Δ, finite simplicial sets, nerves, and Kan interfaces.\n.\nFor general indexed category theory, prefer Sjoerd Visscher's @data-category@\npackage: its typed-arrow calculus is the primary inspiration for this package's\nindexed modules, and several modules under \"Moonlight.Category.Indexed\" are adapted\nfrom it. Thank you to Sjoerd Visscher for the design and implementation work in\n@data-category@. See THIRD_PARTY_NOTICES.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
          (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
          (hsPkgs."moonlight-category".components.sublibs.site or (errorHandler.buildDepError "moonlight-category:site"))
          (hsPkgs."moonlight-category".components.sublibs.indexed or (errorHandler.buildDepError "moonlight-category:indexed"))
        ];
        buildable = true;
      };
      sublibs = {
        "abstract" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "finite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
          ];
          buildable = true;
        };
        "site" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
          ];
          buildable = true;
        };
        "indexed" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
        "simplicial" = {
          depends = [
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
            (hsPkgs."moonlight-category".components.sublibs.indexed or (errorHandler.buildDepError "moonlight-category:indexed"))
          ];
          buildable = true;
        };
        "laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-pale".components.sublibs.test-laws or (errorHandler.buildDepError "moonlight-pale:test-laws"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
            (hsPkgs."moonlight-category".components.sublibs.site or (errorHandler.buildDepError "moonlight-category:site"))
          ];
          buildable = true;
        };
      };
      tests = {
        "moonlight-category-abstract-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
            (hsPkgs."moonlight-category".components.sublibs.laws or (errorHandler.buildDepError "moonlight-category:laws"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "moonlight-category-finite-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
            (hsPkgs."moonlight-category".components.sublibs.laws or (errorHandler.buildDepError "moonlight-category:laws"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-category-site-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.laws or (errorHandler.buildDepError "moonlight-category:laws"))
            (hsPkgs."moonlight-category".components.sublibs.site or (errorHandler.buildDepError "moonlight-category:site"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "moonlight-category-indexed-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.indexed or (errorHandler.buildDepError "moonlight-category:indexed"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "moonlight-category-simplicial-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-category".components.sublibs.indexed or (errorHandler.buildDepError "moonlight-category:indexed"))
            (hsPkgs."moonlight-category".components.sublibs.laws or (errorHandler.buildDepError "moonlight-category:laws"))
            (hsPkgs."moonlight-category".components.sublibs.simplicial or (errorHandler.buildDepError "moonlight-category:simplicial"))
            (hsPkgs."moonlight-pale".components.sublibs.test-laws or (errorHandler.buildDepError "moonlight-pale:test-laws"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "moonlight-category-facade-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "moonlight-category-laws-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."moonlight-category".components.sublibs.laws or (errorHandler.buildDepError "moonlight-category:laws"))
          ];
          buildable = true;
        };
        "moonlight-category-coherence-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
            (hsPkgs."moonlight-category".components.sublibs.laws or (errorHandler.buildDepError "moonlight-category:laws"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-category".components.sublibs.site or (errorHandler.buildDepError "moonlight-category:site"))
            (hsPkgs."moonlight-category".components.sublibs.indexed or (errorHandler.buildDepError "moonlight-category:indexed"))
            (hsPkgs."moonlight-category".components.sublibs.simplicial or (errorHandler.buildDepError "moonlight-category:simplicial"))
            (hsPkgs."moonlight-pale".components.sublibs.test-laws or (errorHandler.buildDepError "moonlight-pale:test-laws"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "moonlight-category-abstract-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-category-finite-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
            (hsPkgs."moonlight-category".components.sublibs.laws or (errorHandler.buildDepError "moonlight-category:laws"))
          ];
          buildable = true;
        };
        "moonlight-category-site-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
            (hsPkgs."moonlight-category".components.sublibs.laws or (errorHandler.buildDepError "moonlight-category:laws"))
            (hsPkgs."moonlight-category".components.sublibs.site or (errorHandler.buildDepError "moonlight-category:site"))
          ];
          buildable = true;
        };
        "moonlight-category-indexed-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."moonlight-category".components.sublibs.indexed or (errorHandler.buildDepError "moonlight-category:indexed"))
          ];
          buildable = true;
        };
        "moonlight-category-simplicial-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.simplicial or (errorHandler.buildDepError "moonlight-category:simplicial"))
          ];
          buildable = true;
        };
        "moonlight-category-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."moonlight-category".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-category:abstract"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."moonlight-category" or (errorHandler.buildDepError "moonlight-category"))
            (hsPkgs."moonlight-category".components.sublibs.finite or (errorHandler.buildDepError "moonlight-category:finite"))
            (hsPkgs."moonlight-category".components.sublibs.laws or (errorHandler.buildDepError "moonlight-category:laws"))
            (hsPkgs."moonlight-category".components.sublibs.site or (errorHandler.buildDepError "moonlight-category:site"))
            (hsPkgs."moonlight-category".components.sublibs.indexed or (errorHandler.buildDepError "moonlight-category:indexed"))
            (hsPkgs."moonlight-category".components.sublibs.simplicial or (errorHandler.buildDepError "moonlight-category:simplicial"))
          ];
          buildable = true;
        };
      };
    };
  }