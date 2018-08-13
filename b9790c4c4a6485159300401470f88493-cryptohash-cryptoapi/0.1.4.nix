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
      specVersion = "1.6";
      identifier = {
        name = "cryptohash-cryptoapi";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/vincenthz/hs-cryptohash-cryptoapi";
      url = "";
      synopsis = "Crypto-api interfaces for cryptohash";
      description = "Crypto-api interfaces for cryptohash";
      buildType = "Simple";
    };
    components = {
      "cryptohash-cryptoapi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.memory)
          (hsPkgs.cryptonite)
          (hsPkgs.crypto-api)
          (hsPkgs.tagged)
          (hsPkgs.cereal)
        ];
      };
    };
  }