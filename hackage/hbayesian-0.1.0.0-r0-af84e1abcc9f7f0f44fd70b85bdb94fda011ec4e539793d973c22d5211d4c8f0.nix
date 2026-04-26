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
      identifier = { name = "hbayesian"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2025 hbayesian contributors";
      maintainer = "le.niu@hotmail.com";
      author = "hbayesian contributors";
      homepage = "https://github.com/overshiki/hbayesian";
      url = "";
      synopsis = "Composable Bayesian inference in Haskell on StableHLO/XLA";
      description = "HBayesian is a library of MCMC samplers that compiles inference kernels to\nStableHLO and executes them via PJRT (CPU, GPU, or TPU). It provides\nstateless, composable transition kernels for MCMC, built on top of the HHLO\nHaskell frontend. Features include RandomWalk MH, Elliptical Slice, HMC,\nMALA, chain combinators (burn-in, thinning, parallel chains), host-side\ndiagnostics (R-hat, ESS), and a shallow probabilistic programming layer.\n.\nEvery sampler is a pure Haskell function that builds a StableHLO graph via\nthe HHLO EDSL. There is no interpreter fallback — if it compiles, it runs\non device.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "hbayesian-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hbayesian" or (errorHandler.buildDepError "hbayesian"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "hbayesian-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hbayesian" or (errorHandler.buildDepError "hbayesian"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "correlated-gaussian-hmc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hbayesian" or (errorHandler.buildDepError "hbayesian"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hbayesian-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hbayesian" or (errorHandler.buildDepError "hbayesian"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }