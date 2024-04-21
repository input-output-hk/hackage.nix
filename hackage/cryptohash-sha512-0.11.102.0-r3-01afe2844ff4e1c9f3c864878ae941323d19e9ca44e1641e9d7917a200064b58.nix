{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "cryptohash-sha512"; version = "0.11.102.0"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez, Herbert Valerio Riedel";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "";
      homepage = "https://github.com/haskell-hvr/cryptohash-sha512";
      url = "";
      synopsis = "Fast, pure and practical SHA-512 implementation";
      description = "A practical incremental and one-pass, pure API to\nthe [SHA-512, SHA512/t and SHA-384 cryptographic hash algorithms](https://en.wikipedia.org/wiki/SHA-2) according\nto [FIPS 180-4](http://dx.doi.org/10.6028/NIST.FIPS.180-4)\nwith performance close to the fastest implementations available in other languages.\n\nThe core SHA-512 algorithm is implemented in C and is thus expected\nto be as fast as the standard [sha512sum(1) tool](https://linux.die.net/man/1/sha512sum).\n(If, instead, you require a pure Haskell implementation and performance is secondary, please refer to the [SHA package](https://hackage.haskell.org/package/SHA).)\n\nAdditionally, this package provides support for\n\n- HMAC-SHA-384: SHA-384-based [Hashed Message Authentication Codes](https://en.wikipedia.org/wiki/HMAC) (HMAC)\n- HMAC-SHA-512: SHA-512-based [Hashed Message Authentication Codes](https://en.wikipedia.org/wiki/HMAC) (HMAC)\n- HMAC-SHA-512\\/t: SHA-512\\/t-based [Hashed Message Authentication Codes](https://en.wikipedia.org/wiki/HMAC) (HMAC)\n\nconforming to [RFC6234](https://tools.ietf.org/html/rfc6234), [RFC4231](https://tools.ietf.org/html/rfc4231), [RFC5869](https://tools.ietf.org/html/rfc5869), et al..\n\n=== Packages in the @cryptohash-*@ family\n\n- <https://hackage.haskell.org/package/cryptohash-md5    cryptohash-md5>\n- <https://hackage.haskell.org/package/cryptohash-sha1   cryptohash-sha1>\n- <https://hackage.haskell.org/package/cryptohash-sha256 cryptohash-sha256>\n- <https://hackage.haskell.org/package/cryptohash-sha512 cryptohash-sha512>\n\n=== Relationship to the @cryptohash@ package and its API\n\nThis package has been originally a fork of @cryptohash-0.11.7@ because the @cryptohash@\npackage had been deprecated and so this package continues to satisfy the need for a\nlightweight package providing the SHA-512 hash algorithms without any dependencies on packages\nother than @base@ and @bytestring@. The API exposed by @cryptohash-sha512-0.11.*@'s\n\"Crypto.Hash.SHA512\", \"Crypto.Hash.SHA512t\", and \"Crypto.Hash.SHA384\" module is guaranteed to remain a compatible superset of the API provided\nby the @cryptohash-0.11.7@'s module of the same name.\n\nConsequently, this package is designed to be used as a drop-in replacement for the @cryptohash-0.11.7@ modules mentioned above, though with\na [clearly smaller footprint by almost 3 orders of magnitude](https://www.reddit.com/r/haskell/comments/5lxv75/psa_please_use_unique_module_names_when_uploading/dbzegx3/).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test-sha512" = {
          depends = [
            (hsPkgs."cryptohash-sha512" or (errorHandler.buildDepError "cryptohash-sha512"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "test-sha512t" = {
          depends = [
            (hsPkgs."cryptohash-sha512" or (errorHandler.buildDepError "cryptohash-sha512"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "test-sha384" = {
          depends = [
            (hsPkgs."cryptohash-sha512" or (errorHandler.buildDepError "cryptohash-sha512"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-sha512" = {
          depends = [
            (hsPkgs."cryptohash-sha512" or (errorHandler.buildDepError "cryptohash-sha512"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }