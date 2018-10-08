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
      specVersion = "1.10";
      identifier = {
        name = "cryptohash-md5";
        version = "0.11.100.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez, Herbert Valerio Riedel";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "";
      homepage = "https://github.com/hvr/cryptohash-md5";
      url = "";
      synopsis = "Fast, pure and practical MD5 implementation";
      description = "A practical incremental and one-pass, pure API to the\n<https://en.wikipedia.org/wiki/MD5 MD5 hash algorithm>\n(including <https://en.wikipedia.org/wiki/HMAC HMAC> support)\nwith performance close to the fastest implementations available in other languages.\n\nThe implementation is made in C with a haskell FFI wrapper that hides the C implementation.\n\nIf, instead, you require a pure Haskell implementation and performance is secondary, please refer to the [pureMD5 package](https://hackage.haskell.org/package/pureMD5).\n\n=== Packages in the @cryptohash-*@ family\n\n- <https://hackage.haskell.org/package/cryptohash-md5    cryptohash-md5>\n- <https://hackage.haskell.org/package/cryptohash-sha1   cryptohash-sha1>\n- <https://hackage.haskell.org/package/cryptohash-sha256 cryptohash-sha256>\n- <https://hackage.haskell.org/package/cryptohash-sha512 cryptohash-sha512>\n\n=== Relationship to the @cryptohash@ package and its API\n\nThis package has been originally a fork of @cryptohash-0.11.7@ because the @cryptohash@\npackage had been deprecated and so this package continues to satisfy the need for a\nlightweight package providing the MD5 hash algorithm without any dependencies on packages\nother than @base@ and @bytestring@. The API exposed by @cryptohash-md5-0.11.*@'s\n\"Crypto.Hash.MD5\" module is guaranteed to remain a compatible superset of the API provided\nby the @cryptohash-0.11.7@'s module of the same name.\n\nConsequently, this package is designed to be used as a drop-in replacement for @cryptohash-0.11.7@'s\n\"Crypto.Hash.MD5\" module, though with\na [clearly smaller footprint by almost 3 orders of magnitude](https://www.reddit.com/r/haskell/comments/5lxv75/psa_please_use_unique_module_names_when_uploading/dbzegx3/).\n";
      buildType = "Simple";
    };
    components = {
      "cryptohash-md5" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test-md5" = {
          depends  = [
            (hsPkgs.cryptohash-md5)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.pureMD5)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
      benchmarks = {
        "bench-md5" = {
          depends  = [
            (hsPkgs.cryptohash-md5)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }