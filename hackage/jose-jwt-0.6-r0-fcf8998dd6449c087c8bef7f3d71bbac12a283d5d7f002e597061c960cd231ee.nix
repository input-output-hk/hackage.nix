{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { doctest = true; };
    package = {
      specVersion = "1.16";
      identifier = {
        name = "jose-jwt";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Taylor <tekul.hs@gmail.com>";
      author = "Luke Taylor <tekul.hs@gmail.com>";
      homepage = "http://github.com/tekul/jose-jwt";
      url = "";
      synopsis = "JSON Object Signing and Encryption Library";
      description = "\nIntended to provide support for the JOSE suite of IETF (draft)\nstandards and the closely related JWT (JSON web token) spec\n(<http://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32/>).\n\nBoth signed and encrypted JWTs are supported, as well as simple\nJWK format keys.\n\nThe library is currently intended to support work on an OpenID\nConnect implementation and the APIs should not be considered\ncomplete, stable or secure for all use cases.";
      buildType = "Simple";
    };
    components = {
      "jose-jwt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.crypto-random)
          (hsPkgs.crypto-numbers)
          (hsPkgs.cipher-aes)
          (hsPkgs.errors)
          (hsPkgs.aeson)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.base64-bytestring)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.jose-jwt)
            (hsPkgs.base)
            (hsPkgs.aeson-qq)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.crypto-pubkey-types)
            (hsPkgs.crypto-random)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.cipher-aes)
            (hsPkgs.either)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.doctest)) [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.cprng-aes)
          ];
        };
      };
      benchmarks = {
        "bench-jwt" = {
          depends  = [
            (hsPkgs.jose-jwt)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.crypto-random)
          ];
        };
      };
    };
  }