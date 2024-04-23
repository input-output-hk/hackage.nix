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
      specVersion = "1.10";
      identifier = { name = "sdr"; version = "0.1.0.10"; };
      license = "BSD-3-Clause";
      copyright = "2015 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "https://github.com/adamwalker/sdr";
      url = "";
      synopsis = "A software defined radio library";
      description = "Write software defined radio applications in Haskell.\n\nFeatures:\n\n* Signal processing blocks can be chained together using the <https://hackage.haskell.org/package/pipes Pipes> library\n\n* Zero copy design\n\n* Signal processing functions are implemented in both Haskell and C (with SIMD acceleration)\n\n* Can FIR filter, decimate and resample\n\n* Helper functions for FIR filter design using window functions and plotting of the frequency response\n\n* FFTs using <http://www.fftw.org/ FFTW>\n\n* Line and waterfall plots using OpenGL\n\n* FM demodulation\n\n* PulseAudio sound sink\n\n* <http://sdr.osmocom.org/trac/wiki/rtl-sdr rtl-sdr> and <https://nuand.com BladeRF> based radio sources/sinks supported and other sources are easily added\n\nSee <https://github.com/adamwalker/sdr> for more features and screenshots.\n\nA collection of simple apps that use this library can be found <https://github.com/adamwalker/sdr-apps here>. These include an FM radio receiver, an OpenGL waterfall plotter and an AM radio receiver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fftwRaw" or (errorHandler.buildDepError "fftwRaw"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pulse-simple" or (errorHandler.buildDepError "pulse-simple"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."rtlsdr" or (errorHandler.buildDepError "rtlsdr"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."dynamic-graph" or (errorHandler.buildDepError "dynamic-graph"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
        ];
        buildable = if system.isI386 then false else true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."sdr" or (errorHandler.buildDepError "sdr"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
            (hsPkgs."sdr" or (errorHandler.buildDepError "sdr"))
          ];
          buildable = true;
        };
      };
    };
  }