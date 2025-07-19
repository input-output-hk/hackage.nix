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
    flags = {
      with_expensive_assertions = false;
      release = true;
      test_seq = false;
    };
    package = {
      specVersion = "3.6";
      identifier = { name = "horde-ad"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mikolaj@well-typed.com";
      author = "Mikolaj Konarski and others";
      homepage = "";
      url = "";
      synopsis = "Higher Order Reverse Derivatives Efficiently - Automatic Differentiation";
      description = "An Automatic Differentiation library originally inspired by the paper \"Provably correct, asymptotically efficient, higher-order reverse-mode automatic differentiation\" (POPL 2022). Compared to the paper and to classic taping AD Haskell packages, the library additionally efficiently supports array operations and generation of symbolic derivative programs, though the efficiency is confined to a narrowly typed class of source programs with limited higher-orderness. A detailed account of the extension is in the paper by Tom Smeding, Mikolaj Konarski, Simon Peyton Jones and Andrew Fitzgibbon available at http://arxiv.org/abs/2507.12640.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."assert-failure" or (errorHandler.buildDepError "assert-failure"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."dependent-enummap" or (errorHandler.buildDepError "dependent-enummap"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
          (hsPkgs."orthotope" or (errorHandler.buildDepError "orthotope"))
          (hsPkgs."ox-arrays" or (errorHandler.buildDepError "ox-arrays"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."atomic-counter" or (errorHandler.buildDepError "atomic-counter"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      sublibs = {
        "exampleLibrary" = {
          depends = [
            (hsPkgs."horde-ad" or (errorHandler.buildDepError "horde-ad"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."mnist-idx" or (errorHandler.buildDepError "mnist-idx"))
            (hsPkgs."ox-arrays" or (errorHandler.buildDepError "ox-arrays"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
        "benchCommonLibrary" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.exampleLibrary or (errorHandler.buildDepError "horde-ad:exampleLibrary"))
            (hsPkgs."horde-ad" or (errorHandler.buildDepError "horde-ad"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."ox-arrays" or (errorHandler.buildDepError "ox-arrays"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "testToolLibrary" = {
          depends = [
            (hsPkgs."horde-ad" or (errorHandler.buildDepError "horde-ad"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ox-arrays" or (errorHandler.buildDepError "ox-arrays"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "testCommonLibrary" = {
          depends = [
            (hsPkgs."horde-ad" or (errorHandler.buildDepError "horde-ad"))
            (hsPkgs."horde-ad".components.sublibs.exampleLibrary or (errorHandler.buildDepError "horde-ad:exampleLibrary"))
            (hsPkgs."horde-ad".components.sublibs.testToolLibrary or (errorHandler.buildDepError "horde-ad:testToolLibrary"))
            (hsPkgs."assert-failure" or (errorHandler.buildDepError "assert-failure"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."ox-arrays" or (errorHandler.buildDepError "ox-arrays"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      tests = {
        "fullTest" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.testCommonLibrary or (errorHandler.buildDepError "horde-ad:testCommonLibrary"))
            (hsPkgs."horde-ad".components.sublibs.testToolLibrary or (errorHandler.buildDepError "horde-ad:testToolLibrary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if flags.release then false else true;
        };
        "CAFlessTest" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.testCommonLibrary or (errorHandler.buildDepError "horde-ad:testCommonLibrary"))
            (hsPkgs."horde-ad".components.sublibs.testToolLibrary or (errorHandler.buildDepError "horde-ad:testToolLibrary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if flags.release then false else true;
        };
        "parallelTest" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.testCommonLibrary or (errorHandler.buildDepError "horde-ad:testCommonLibrary"))
            (hsPkgs."horde-ad".components.sublibs.testToolLibrary or (errorHandler.buildDepError "horde-ad:testToolLibrary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if flags.release then false else true;
        };
        "minimalTest" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.testCommonLibrary or (errorHandler.buildDepError "horde-ad:testCommonLibrary"))
            (hsPkgs."horde-ad".components.sublibs.testToolLibrary or (errorHandler.buildDepError "horde-ad:testToolLibrary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "longProdBench" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.benchCommonLibrary or (errorHandler.buildDepError "horde-ad:benchCommonLibrary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "shortProdForCI" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.benchCommonLibrary or (errorHandler.buildDepError "horde-ad:benchCommonLibrary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "longMnistBench" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.benchCommonLibrary or (errorHandler.buildDepError "horde-ad:benchCommonLibrary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = if flags.release then false else true;
        };
        "shortMnistForCI" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.benchCommonLibrary or (errorHandler.buildDepError "horde-ad:benchCommonLibrary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = if flags.release then false else true;
        };
        "realisticMnistBench" = {
          depends = [
            (hsPkgs."horde-ad".components.sublibs.benchCommonLibrary or (errorHandler.buildDepError "horde-ad:benchCommonLibrary"))
            (hsPkgs."horde-ad".components.sublibs.exampleLibrary or (errorHandler.buildDepError "horde-ad:exampleLibrary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = false;
        };
      };
    };
  }