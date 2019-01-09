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
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.DRBG)
          (hsPkgs.split)
          (hsPkgs.process)
          (hsPkgs.haskell98)
          (hsPkgs.time)
          (hsPkgs.DRBG)
          (hsPkgs.crypto-api)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.tagged)
          ];
        libs = [ (pkgs."intel_aes") ];
        };
      exes = {
        "benchmark-intel-aes-rng" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.rdtsc)
            (hsPkgs.unix)
            (hsPkgs.random)
            (hsPkgs.crypto-api)
            (hsPkgs.DRBG)
            (hsPkgs.tagged)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.haskell98)
            (hsPkgs.time)
            (hsPkgs.intel-aes)
            ];
          };
        };
      };
    }