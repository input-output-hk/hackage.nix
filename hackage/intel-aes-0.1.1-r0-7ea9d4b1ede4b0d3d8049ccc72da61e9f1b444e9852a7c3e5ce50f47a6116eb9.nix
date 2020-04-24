{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."DRBG" or ((hsPkgs.pkgs-errors).buildDepError "DRBG"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."DRBG" or ((hsPkgs.pkgs-errors).buildDepError "DRBG"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ];
        libs = [
          (pkgs."intel_aes" or ((hsPkgs.pkgs-errors).sysDepError "intel_aes"))
          ];
        buildable = true;
        };
      exes = {
        "benchmark-intel-aes-rng" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."rdtsc" or ((hsPkgs.pkgs-errors).buildDepError "rdtsc"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
            (hsPkgs."DRBG" or ((hsPkgs.pkgs-errors).buildDepError "DRBG"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."intel-aes" or ((hsPkgs.pkgs-errors).buildDepError "intel-aes"))
            ];
          buildable = true;
          };
        };
      };
    }