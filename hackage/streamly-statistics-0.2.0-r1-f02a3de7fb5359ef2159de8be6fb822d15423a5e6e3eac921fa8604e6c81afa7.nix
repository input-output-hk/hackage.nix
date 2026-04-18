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
    flags = { fusion-plugin = true; };
    package = {
      specVersion = "2.4";
      identifier = { name = "streamly-statistics"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "2019 Composewell Technologies";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://streamly.composewell.com";
      url = "";
      synopsis = "Statistical measures for finite or infinite data streams.";
      description = "Statistical measures for finite or infinite data streams.\n\nAll operations use numerically stable floating point arithmetic.\nMeasurements can be performed over the entire input stream or on a sliding\nwindow of fixed or variable size.  Where possible, measures are computed\nonline without buffering the input stream.\n\nIncludes\\:\n\n* Summary: length, sum, powerSum\n* Location: minimum, maximum, rawMoments, means, exponential smoothing\n* Spread: range, variance, deviations\n* Shape: skewness, kurtosis\n* Sample statistics, resampling\n* Probablity distribution: frequency, mode, histograms\n* Transforms: Fast fourier transform";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."deque" or (errorHandler.buildDepError "deque"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."streamly-statistics" or (errorHandler.buildDepError "streamly-statistics"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."streamly-statistics" or (errorHandler.buildDepError "streamly-statistics"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ] ++ pkgs.lib.optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && compiler.version.lt "8.6")) (hsPkgs."fusion-plugin" or (errorHandler.buildDepError "fusion-plugin"));
          buildable = true;
        };
      };
    };
  }