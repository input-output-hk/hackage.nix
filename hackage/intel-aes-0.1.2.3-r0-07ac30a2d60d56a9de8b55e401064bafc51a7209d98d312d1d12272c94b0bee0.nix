{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "intel-aes"; version = "0.1.2.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Intel Corporation";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>,\nSvein Ove Aas <svein.ove@aas.no>, Thomas M. DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "https://github.com/rrnewton/intel-aes/wiki";
      url = "";
      synopsis = "Hardware accelerated AES encryption and RNG.";
      description = "AES encryption with optional hardware acceleration.  Plus,\nstatistically sound, splittable random number generation based on AES.\nThis package is nothing more than a wrapper around the Intel-provided\nAESNI sample library which also includes a portable software\nimplementation of AES by Brian Gladman.  It contains C,\nassembly, and Haskell sources.  And it includes prebuilt dynamic\nlibraries to make the build process less fragile.\n(Rebuilding requires the @yasm@ assembler.)  But prebuilt shared\nlibraries are not included for all platforms yet.  (Volunteers\nneeded!)\nFinally, note that this package is currently triggering some haddock\nproblems. A manually built copy of the documentation can be found\nat:\n<http://people.csail.mit.edu/newton/intel-aes-doc/>";
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
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."largeword" or ((hsPkgs.pkgs-errors).buildDepError "largeword"))
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
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."DRBG" or ((hsPkgs.pkgs-errors).buildDepError "DRBG"))
            (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."largeword" or ((hsPkgs.pkgs-errors).buildDepError "largeword"))
            (hsPkgs."intel-aes" or ((hsPkgs.pkgs-errors).buildDepError "intel-aes"))
            ];
          buildable = true;
          };
        };
      };
    }