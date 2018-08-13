{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "intel-aes";
        version = "0.2.0.0";
      };
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
      "intel-aes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.DRBG)
          (hsPkgs.split)
          (hsPkgs.process)
          (hsPkgs.haskell98)
          (hsPkgs.time)
          (hsPkgs.crypto-api)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.tagged)
          (hsPkgs.largeword)
          (hsPkgs.rdtsc)
          (hsPkgs.unix)
        ];
        libs = [ (pkgs."intel_aes") ];
      };
    };
  }