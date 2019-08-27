let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."DRBG" or (buildDepError "DRBG"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."DRBG" or (buildDepError "DRBG"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          ];
        libs = [ (pkgs."intel_aes" or (sysDepError "intel_aes")) ];
        };
      exes = {
        "benchmark-intel-aes-rng" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."rdtsc" or (buildDepError "rdtsc"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."DRBG" or (buildDepError "DRBG"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."intel-aes" or (buildDepError "intel-aes"))
            ];
          };
        };
      };
    }