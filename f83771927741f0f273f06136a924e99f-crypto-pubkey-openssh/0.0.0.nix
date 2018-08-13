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
      specVersion = "1.12";
      identifier = {
        name = "crypto-pubkey-openssh";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "Fedor Gogolev <knsd@knsd.net>";
      maintainer = "Fedor Gogolev <knsd@knsd.net>";
      author = "Fedor Gogolev <knsd@knsd.net>";
      homepage = "https://github.com/knsd/crypto-pubkey-openssh";
      url = "";
      synopsis = "OpenSSH public keys parser";
      description = "OpenSSH public keys parser";
      buildType = "Simple";
    };
    components = {
      "crypto-pubkey-openssh" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cereal)
          (hsPkgs.attoparsec)
          (hsPkgs.crypto-pubkey-types)
        ];
      };
    };
  }