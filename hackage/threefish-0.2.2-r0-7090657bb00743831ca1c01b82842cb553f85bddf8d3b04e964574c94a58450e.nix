{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "threefish";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "http://github.com/valderman/threefish";
      url = "";
      synopsis = "The Threefish block cipher and the Skein hash function for Haskell.";
      description = "Implements 256 and 512 bit variants of Threefish and Skein. Skein is usable as a \"normal\" hash function as well as in Skein-MAC, as a cryptographically secure PRNG, as a stream cipher and as a key derivation function, all implemented according to the specifications of the Skein 1.3 paper.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.array)
          (hsPkgs.crypto-api)
          (hsPkgs.tagged)
          (hsPkgs.data-default)
          (hsPkgs.random)
          (hsPkgs.entropy)
        ];
      };
    };
  }