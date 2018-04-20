{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "commsec-keyexchange";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomas.dubuisson@gmail.com";
        author = "Thomas M. DuBuisson";
        homepage = "https://github.com/TomMD/commsec-keyExchange";
        url = "";
        synopsis = "Key agreement for commsec.";
        description = "Use RSA keys to authenticate a key exchange to\nestablish a commsec 'Connection'.  This package comes with\nthe same warnings as 'commsec': There is minimal testing\nand no code review.  Use at your own risk.";
        buildType = "Simple";
      };
      components = {
        commsec-keyexchange = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.crypto-pubkey-types
            hsPkgs.cipher-aes128
            hsPkgs.crypto-api
            hsPkgs.bytestring
            hsPkgs.commsec
            hsPkgs.RSA
            hsPkgs.cryptohash-cryptoapi
            hsPkgs.DRBG
            hsPkgs.monadcryptorandom
            hsPkgs.cereal
          ];
        };
      };
    }