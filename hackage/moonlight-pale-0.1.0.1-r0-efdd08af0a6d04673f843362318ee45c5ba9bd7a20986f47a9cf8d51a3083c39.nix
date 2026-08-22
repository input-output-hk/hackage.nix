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
      identifier = { name = "moonlight-pale"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "rosaliafialkova@gmail.com";
      author = "Blue Rose";
      homepage = "https://github.com/PaleRoses/moonlight";
      url = "";
      synopsis = "Shared diagnostics, law testing, and GHC/HIE tooling for Moonlight.";
      description = "Role-specific public libraries for diagnostics, law testing, benchmarking, GHC/HIE source tooling, and compile-diagnostic support.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "ghc-surface" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "diagnostic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "measurement" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "test-surface" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."moonlight-pale".components.sublibs.ghc-surface or (errorHandler.buildDepError "moonlight-pale:ghc-surface"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
        "test-laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "diagnostic-ghc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."moonlight-pale".components.sublibs.ghc-surface or (errorHandler.buildDepError "moonlight-pale:ghc-surface"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.14"
            then false
            else true;
        };
      };
      tests = {
        "moonlight-pale-bench-measure-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moonlight-pale".components.sublibs.measurement or (errorHandler.buildDepError "moonlight-pale:measurement"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "moonlight-pale-ghc-surface-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-pale".components.sublibs.diagnostic-ghc or (errorHandler.buildDepError "moonlight-pale:diagnostic-ghc"))
            (hsPkgs."moonlight-pale".components.sublibs.ghc-surface or (errorHandler.buildDepError "moonlight-pale:ghc-surface"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "moonlight-pale-diagnostic-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."moonlight-pale".components.sublibs.diagnostic or (errorHandler.buildDepError "moonlight-pale:diagnostic"))
          ];
          buildable = true;
        };
        "moonlight-pale-test-laws-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."moonlight-pale".components.sublibs.test-laws or (errorHandler.buildDepError "moonlight-pale:test-laws"))
          ];
          buildable = true;
        };
        "moonlight-pale-test-support-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
          ];
          buildable = true;
        };
        "moonlight-pale-test-surface-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."moonlight-pale".components.sublibs.test-surface or (errorHandler.buildDepError "moonlight-pale:test-surface"))
          ];
          buildable = true;
        };
        "moonlight-pale-diagnostic-ghc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."moonlight-pale".components.sublibs.diagnostic-ghc or (errorHandler.buildDepError "moonlight-pale:diagnostic-ghc"))
            (hsPkgs."moonlight-pale".components.sublibs.test or (errorHandler.buildDepError "moonlight-pale:test"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "moonlight-pale-diagnostic-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."moonlight-pale".components.sublibs.diagnostic or (errorHandler.buildDepError "moonlight-pale:diagnostic"))
          ];
          buildable = true;
        };
        "moonlight-pale-ghc-surface-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-pale".components.sublibs.ghc-surface or (errorHandler.buildDepError "moonlight-pale:ghc-surface"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "moonlight-pale-laws-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."moonlight-pale".components.sublibs.test-laws or (errorHandler.buildDepError "moonlight-pale:test-laws"))
          ];
          buildable = true;
        };
        "moonlight-pale-equivalence-receipts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-pale".components.sublibs.diagnostic or (errorHandler.buildDepError "moonlight-pale:diagnostic"))
            (hsPkgs."moonlight-pale".components.sublibs.ghc-surface or (errorHandler.buildDepError "moonlight-pale:ghc-surface"))
            (hsPkgs."moonlight-pale".components.sublibs.measurement or (errorHandler.buildDepError "moonlight-pale:measurement"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "moonlight-pale-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."moonlight-core" or (errorHandler.buildDepError "moonlight-core"))
            (hsPkgs."moonlight-pale".components.sublibs.diagnostic or (errorHandler.buildDepError "moonlight-pale:diagnostic"))
            (hsPkgs."moonlight-pale".components.sublibs.ghc-surface or (errorHandler.buildDepError "moonlight-pale:ghc-surface"))
            (hsPkgs."moonlight-pale".components.sublibs.test-laws or (errorHandler.buildDepError "moonlight-pale:test-laws"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }