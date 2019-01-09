{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "jose"; version = "0.3.41.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2013, 2014, 2015  Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/frasertweedale/hs-jose";
      url = "";
      synopsis = "Javascript Object Signing and Encryption and JSON Web Token library";
      description = "\nAn implementation of the Javascript Object Signing and Encryption\n(JOSE) and JSON Web Token (JWT) formats.\n\nWeb Encryption (JWE) is not yet implemented.\n\nAll JWS algorithms (HMAC, ECDSA, RSASSA-PKCS-v1_5 and RSASSA-PSS)\nare implemented, however, the ECDSA implementation is is\nvulnerable to timing attacks and should therefore only be used for\nJWS verification.\n\nThe 'Crypto.JOSE.Legacy' module is provided for working with the\nMozilla Persona (formerly BrowserID) key format.  Only RSA keys\nare supported - DSA keys cannot be used and must be handled as\nopaque objects.\n\nThe version number tracks the IETF jose working group draft\nrevisions.  For now, expect breaking API changes on any version\nchange except for the final (fourth) part being incremented.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.integer-gmp)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.byteable)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.crypto-random)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default-class)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.network-uri)
          (hsPkgs.x509)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.byteable)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.crypto-pubkey-types)
            (hsPkgs.crypto-random)
            (hsPkgs.cryptohash)
            (hsPkgs.data-default-class)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.template-haskell)
            (hsPkgs.safe)
            (hsPkgs.semigroups)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.network-uri)
            (hsPkgs.vector)
            (hsPkgs.x509)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }