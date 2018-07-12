{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "jose";
          version = "0.2.33.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2013, 2014  Fraser Tweedale";
        maintainer = "frase@frase.id.au";
        author = "Fraser Tweedale";
        homepage = "https://github.com/frasertweedale/hs-jose";
        url = "";
        synopsis = "Javascript Object Signing and Encryption and JSON Web Token library";
        description = "\nAn implementation of the Javascript Object Signing and Encryption\n(JOSE) and JSON Web Token (JWT) formats.\n\nWeb Encryption (JWE) is not yet implemented.\n\nAll JWS algorithms (HMAC, ECDSA, RSASSA-PKCS-v1_5 and RSASSA-PSS)\nare implemented, however, the ECDSA implementation is is\nvulnerable to timing attacks and should therefore only be used for\nJWS verification.\n\nThe version number tracks the IETF jose working group draft\nrevisions.  For now, expect breaking API changes on any version\nchange except for the final (fourth) part being incremented.";
        buildType = "Simple";
      };
      components = {
        "jose" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.base64-bytestring
            hsPkgs.byteable
            hsPkgs.crypto-pubkey
            hsPkgs.crypto-pubkey-types
            hsPkgs.crypto-random
            hsPkgs.cryptohash
            hsPkgs.template-haskell
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.time
            hsPkgs.network
            hsPkgs.certificate
            hsPkgs.vector
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.base64-bytestring
              hsPkgs.byteable
              hsPkgs.crypto-pubkey
              hsPkgs.crypto-pubkey-types
              hsPkgs.crypto-random
              hsPkgs.cryptohash
              hsPkgs.old-locale
              hsPkgs.template-haskell
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.time
              hsPkgs.network
              hsPkgs.certificate
              hsPkgs.vector
              hsPkgs.hspec
            ];
          };
        };
      };
    }