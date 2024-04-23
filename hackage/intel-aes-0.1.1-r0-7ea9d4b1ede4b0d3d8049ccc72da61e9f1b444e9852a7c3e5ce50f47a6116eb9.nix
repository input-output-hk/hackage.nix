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
      specVersion = "1.8";
      identifier = { name = "intel-aes"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Intel Corporation";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>, Svein Ove Aas <svein.ove@aas.no>, Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Hardware accelerated AES encryption and RNG.";
      description = "AES encryption with optional hardware acceleration.  Plus,\nstatistically sound, splittable random number generation based on AES.\nThe package is nothing more than a wrapper around the following Intel-provided AESNI\nsample library that also includes a portable software implementation by Brian Gladman:\nhttp://software.intel.com/en-us/articles/download-the-intel-aesni-sample-library/\nThe consists of C, assembly sources, and Haskell sources.  It\nincludes prebuilt dynamic libraries for these sources to make the\nbuild process less fragile.  (Rebuilding requires the @yasm@\nassembler.)  But prebuilt shared libraries are not included for all\nplatforms yet.  (Volunteers needed!)\nRegarding portability, see:\nhttps://github.com/rrnewton/intel-aes/issues/#issue/1\nFinally, note that this package is currently triggering some haddock\nproblems. A manually built copy of the documentation can be found\nat:\nhttp://people.csail.mit.edu/newton/intel-aes-doc/";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ];
        libs = [ (pkgs."intel_aes" or (errorHandler.sysDepError "intel_aes")) ];
        buildable = true;
      };
      exes = {
        "benchmark-intel-aes-rng" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."rdtsc" or (errorHandler.buildDepError "rdtsc"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."intel-aes" or (errorHandler.buildDepError "intel-aes"))
          ];
          buildable = true;
        };
      };
    };
  }