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
      specVersion = "1.10";
      identifier = {
        name = "cryptohash-sha512";
        version = "0.11.100.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez, Herbert Valerio Riedel";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "";
      homepage = "https://github.com/hvr/cryptohash-sha512";
      url = "";
      synopsis = "Fast, pure and practical SHA-512 implementation";
      description = "A practical incremental and one-pass, pure API to\nthe [SHA-512 cryptographic hash algorithm](https://en.wikipedia.org/wiki/SHA-2) according\nto [FIPS 180-4](http://dx.doi.org/10.6028/NIST.FIPS.180-4)\nwith performance close to the fastest implementations available in other languages.\n\nThe core SHA-512 algorithm is implemented in C and is thus expected\nto be as fast as the standard [sha512sum(1) tool](https://linux.die.net/man/1/sha512sum).\n(If, instead, you require a pure Haskell implementation and performance is secondary, please refer to the [SHA package](https://hackage.haskell.org/package/SHA).)\n\nAdditionally, this package provides support for\n\n- HMAC-SHA-512: SHA-512-based [Hashed Message Authentication Codes](https://en.wikipedia.org/wiki/HMAC) (HMAC)\n\nconforming to [RFC6234](https://tools.ietf.org/html/rfc6234), [RFC4231](https://tools.ietf.org/html/rfc4231), [RFC5869](https://tools.ietf.org/html/rfc5869), et al..\n\n=== Packages in the @cryptohash-*@ family\n\n- <https://hackage.haskell.org/package/cryptohash-md5    cryptohash-md5>\n- <https://hackage.haskell.org/package/cryptohash-sha1   cryptohash-sha1>\n- <https://hackage.haskell.org/package/cryptohash-sha256 cryptohash-sha256>\n- <https://hackage.haskell.org/package/cryptohash-sha512 cryptohash-sha512>\n\n=== Relationship to the @cryptohash@ package and its API\n\nThis package has been originally a fork of @cryptohash-0.11.7@ because the @cryptohash@\npackage had been deprecated and so this package continues to satisfy the need for a\nlightweight package providing the SHA-512 hash algorithm without any dependencies on packages\nother than @base@ and @bytestring@. The API exposed by @cryptohash-sha512-0.11.*@'s\n\"Crypto.Hash.SHA512\" module is guaranteed to remain a compatible superset of the API provided\nby the @cryptohash-0.11.7@'s module of the same name.\n\nConsequently, this package is designed to be used as a drop-in replacement for @cryptohash-0.11.7@'s\n\"Crypto.Hash.SHA512\" module, though with\na [clearly smaller footprint by almost 3 orders of magnitude](https://www.reddit.com/r/haskell/comments/5lxv75/psa_please_use_unique_module_names_when_uploading/dbzegx3/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test-sha512" = {
          depends = [
            (hsPkgs.cryptohash-sha512)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.SHA)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
      benchmarks = {
        "bench-sha512" = {
          depends = [
            (hsPkgs.cryptohash-sha512)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }