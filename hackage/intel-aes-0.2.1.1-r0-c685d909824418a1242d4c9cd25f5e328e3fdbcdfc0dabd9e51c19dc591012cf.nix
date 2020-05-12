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
      identifier = { name = "intel-aes"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Intel Corporation";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>,\nSvein Ove Aas <svein.ove@aas.no>, Thomas M. DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "https://github.com/rrnewton/intel-aes/wiki";
      url = "";
      synopsis = "Hardware accelerated AES encryption and Random Number Generation.";
      description = "AES encryption with optional hardware acceleration.  Plus,\nstatistically sound, splittable random number generation based on AES.\nThis package is nothing more than a wrapper around the Intel-provided\nAESNI sample library which also includes a portable software\nimplementation of AES by Brian Gladman.  It contains C,\nassembly, and Haskell sources.  And it includes prebuilt dynamic\nlibraries to make the build process less fragile.\n(Rebuilding requires the @yasm@ assembler.)  But prebuilt shared\nlibraries are not included for all platforms yet.  (Volunteers\nneeded!)\nFinally, note that this package is currently triggering some haddock\nproblems. A manually built copy of the documentation can be found\nat:\n<http://cs.indiana.edu/~rrnewton/intel-aes-doc/>";
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
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."largeword" or (errorHandler.buildDepError "largeword"))
          (hsPkgs."rdtsc" or (errorHandler.buildDepError "rdtsc"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        libs = [ (pkgs."intel_aes" or (errorHandler.sysDepError "intel_aes")) ];
        buildable = true;
        };
      };
    }