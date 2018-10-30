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
      specVersion = "1.8";
      identifier = {
        name = "jose";
        version = "0.1.27.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2013, 2014  Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/frasertweedale/hs-jose";
      url = "";
      synopsis = "Javascript Object Signing and Encryption";
      description = "\nAn implementation of the Javascript Object Signing and Encryption\n(jose) formats.\n\nCurrently, only JSON Web Key (JWK) and JSON Web Signature (JWS)\nare implemented, and only the RSA algorithms.\n\nThe version number tracks the IETF jose working group draft\nrevisions.  For now, expect breaking API changes on any version\nchange except for the final part being incremented.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.byteable)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.crypto-random)
          (hsPkgs.cryptohash)
          (hsPkgs.template-haskell)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.network)
          (hsPkgs.certificate)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.base64-bytestring)
            (hsPkgs.byteable)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.crypto-random)
            (hsPkgs.cryptohash)
            (hsPkgs.template-haskell)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.network)
            (hsPkgs.certificate)
            (hsPkgs.vector)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }