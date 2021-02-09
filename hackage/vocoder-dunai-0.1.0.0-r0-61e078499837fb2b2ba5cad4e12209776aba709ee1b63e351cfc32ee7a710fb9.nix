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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vocoder-dunai"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "tilk@tilk.eu";
      author = "Marek Materzok";
      homepage = "https://github.com/tilk/vocoder";
      url = "";
      synopsis = "Phase vocoder for Dunai and Rhine";
      description = "This package wraps the algorithms provided by the vocoder package\nfor use with Dunai and Rhine FRP libraries. This allows convenient\n(soft) real-time frequency domain signal processing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
          (hsPkgs."dunai" or (errorHandler.buildDepError "dunai"))
          (hsPkgs."vocoder" or (errorHandler.buildDepError "vocoder"))
          ];
        buildable = true;
        };
      exes = {
        "vocoder-jack" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vocoder" or (errorHandler.buildDepError "vocoder"))
            (hsPkgs."vocoder-dunai" or (errorHandler.buildDepError "vocoder-dunai"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      tests = {
        "test-vocoder-dunai" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
            (hsPkgs."dunai" or (errorHandler.buildDepError "dunai"))
            (hsPkgs."vocoder" or (errorHandler.buildDepError "vocoder"))
            (hsPkgs."vocoder-dunai" or (errorHandler.buildDepError "vocoder-dunai"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-vocoder-dunai" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
            (hsPkgs."dunai" or (errorHandler.buildDepError "dunai"))
            (hsPkgs."vocoder" or (errorHandler.buildDepError "vocoder"))
            (hsPkgs."vocoder-dunai" or (errorHandler.buildDepError "vocoder-dunai"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            ];
          buildable = true;
          };
        };
      };
    }