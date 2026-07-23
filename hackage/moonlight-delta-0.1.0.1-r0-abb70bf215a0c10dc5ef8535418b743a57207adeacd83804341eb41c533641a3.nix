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
      identifier = { name = "moonlight-delta"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2026 Blue Rose";
      maintainer = "rosaliafialkova@gmail.com";
      author = "Blue Rose";
      homepage = "https://github.com/PaleRoses/moonlight";
      url = "";
      synopsis = "Boundary-aware delta calculus for Moonlight.";
      description = "Categorical and state-change delta vocabulary layered over moonlight-core.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "patch-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "patch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."moonlight-delta".components.sublibs.patch-internal or (errorHandler.buildDepError "moonlight-delta:patch-internal"))
          ];
          buildable = true;
        };
        "epoch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
          ];
          buildable = true;
        };
        "repair" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
      tests = {
        "moonlight-delta-core-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "moonlight-delta-patch-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
            (hsPkgs."moonlight-delta".components.sublibs.patch-internal or (errorHandler.buildDepError "moonlight-delta:patch-internal"))
            (hsPkgs."moonlight-delta".components.sublibs.patch or (errorHandler.buildDepError "moonlight-delta:patch"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "moonlight-delta-epoch-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
            (hsPkgs."moonlight-delta".components.sublibs.epoch or (errorHandler.buildDepError "moonlight-delta:epoch"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "moonlight-delta-repair-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."moonlight-delta".components.sublibs.repair or (errorHandler.buildDepError "moonlight-delta:repair"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "moonlight-delta-laws-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
            (hsPkgs."moonlight-delta".components.sublibs.epoch or (errorHandler.buildDepError "moonlight-delta:epoch"))
            (hsPkgs."moonlight-delta".components.sublibs.patch or (errorHandler.buildDepError "moonlight-delta:patch"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "moonlight-delta-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-algebra".components.sublibs.abstract or (errorHandler.buildDepError "moonlight-algebra:abstract"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
            (hsPkgs."moonlight-delta".components.sublibs.epoch or (errorHandler.buildDepError "moonlight-delta:epoch"))
            (hsPkgs."moonlight-delta".components.sublibs.patch-internal or (errorHandler.buildDepError "moonlight-delta:patch-internal"))
            (hsPkgs."moonlight-delta".components.sublibs.patch or (errorHandler.buildDepError "moonlight-delta:patch"))
            (hsPkgs."moonlight-delta".components.sublibs.repair or (errorHandler.buildDepError "moonlight-delta:repair"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "moonlight-delta-core-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
          ];
          buildable = true;
        };
        "moonlight-delta-patch-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
            (hsPkgs."moonlight-delta".components.sublibs.patch or (errorHandler.buildDepError "moonlight-delta:patch"))
          ];
          buildable = true;
        };
        "moonlight-delta-epoch-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-delta".components.sublibs.epoch or (errorHandler.buildDepError "moonlight-delta:epoch"))
          ];
          buildable = true;
        };
        "moonlight-delta-repair-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-delta".components.sublibs.repair or (errorHandler.buildDepError "moonlight-delta:repair"))
          ];
          buildable = true;
        };
        "moonlight-delta-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-delta".components.sublibs.core or (errorHandler.buildDepError "moonlight-delta:core"))
            (hsPkgs."moonlight-delta".components.sublibs.epoch or (errorHandler.buildDepError "moonlight-delta:epoch"))
            (hsPkgs."moonlight-delta".components.sublibs.patch or (errorHandler.buildDepError "moonlight-delta:patch"))
            (hsPkgs."moonlight-delta".components.sublibs.repair or (errorHandler.buildDepError "moonlight-delta:repair"))
          ];
          buildable = true;
        };
      };
    };
  }