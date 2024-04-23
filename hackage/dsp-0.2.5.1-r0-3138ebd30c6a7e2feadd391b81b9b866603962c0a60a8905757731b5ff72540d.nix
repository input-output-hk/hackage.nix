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
      specVersion = "2.2";
      identifier = { name = "dsp"; version = "0.2.5.1"; };
      license = "GPL-2.0-only";
      copyright = "Matt Donadio, 2003";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Matt Donadio <m.p.donadio@ieee.org>";
      homepage = "http://www.haskell.org/haskellwiki/DSP";
      url = "";
      synopsis = "Haskell Digital Signal Processing";
      description = "Digital Signal Processing, Fourier Transform, Linear Algebra, Interpolation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      exes = {
        "dsp-demo-article" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."dsp" or (errorHandler.buildDepError "dsp"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "dsp-demo-fft-bench" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."dsp" or (errorHandler.buildDepError "dsp"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "dsp-demo-fft-test" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."dsp" or (errorHandler.buildDepError "dsp"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "dsp-demo-freq" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."dsp" or (errorHandler.buildDepError "dsp"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "dsp-demo-iir" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."dsp" or (errorHandler.buildDepError "dsp"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "dsp-demo-noise" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."dsp" or (errorHandler.buildDepError "dsp"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
      tests = {
        "dsp-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."dsp" or (errorHandler.buildDepError "dsp"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }