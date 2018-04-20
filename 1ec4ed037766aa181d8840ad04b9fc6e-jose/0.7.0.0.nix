{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "jose";
          version = "0.7.0.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2013, 2014, 2015, 2016, 2017  Fraser Tweedale";
        maintainer = "frase@frase.id.au";
        author = "Fraser Tweedale";
        homepage = "https://github.com/frasertweedale/hs-jose";
        url = "";
        synopsis = "Javascript Object Signing and Encryption and JSON Web Token library";
        description = "\nAn implementation of the Javascript Object Signing and Encryption\n(JOSE) and JSON Web Token (JWT; RFC 7519) formats.\n\nThe JSON Web Signature (JWS; RFC 7515) implementation is complete.\n\nEdDSA signatures (RFC 8037) are supported (Ed25519 only).\n\nJWK Thumbprint (RFC 7638) is supported (requires /aeson/ >= 0.10).\n\nJSON Web Encryption (JWE; RFC 7516) is not yet implemented.\n\nThe __ECDSA implementation is vulnerable to timing attacks__ and\nshould only be used for verification.";
        buildType = "Simple";
      };
      components = {
        jose = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.base64-bytestring
            hsPkgs.concise
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.lens
            hsPkgs.memory
            hsPkgs.monad-time
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.safe
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.time
            hsPkgs.network-uri
            hsPkgs.QuickCheck
            hsPkgs.quickcheck-instances
            hsPkgs.x509
            hsPkgs.vector
          ];
        };
        exes = {
          jose-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.jose
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.base64-bytestring
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.lens
              hsPkgs.memory
              hsPkgs.monad-time
              hsPkgs.mtl
              hsPkgs.semigroups
              hsPkgs.template-haskell
              hsPkgs.safe
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.time
              hsPkgs.network-uri
              hsPkgs.vector
              hsPkgs.x509
              hsPkgs.concise
              hsPkgs.jose
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-quickcheck
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }