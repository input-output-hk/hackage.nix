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
      specVersion = "1.10";
      identifier = {
        name = "threefish";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "http://github.com/valderman/threefish";
      url = "";
      synopsis = "The Threefish block cipher and the Skein hash function for Haskell.";
      description = "Implements 256 and 512 bit variants of Threefish and Skein. Skein is usable as a \"normal\" hash function as well as in Skein-MAC mode and as a cryptographically secure PRNG, as specified in the Skein 1.3 paper.";
      buildType = "Simple";
    };
    components = {
      "threefish" = {
        depends  = [
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