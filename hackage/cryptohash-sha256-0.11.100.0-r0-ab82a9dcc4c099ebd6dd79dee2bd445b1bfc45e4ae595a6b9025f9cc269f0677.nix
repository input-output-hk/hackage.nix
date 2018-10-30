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
        name = "cryptohash-sha256";
        version = "0.11.100.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez, Herbert Valerio Riedel";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "";
      homepage = "https://github.com/hvr/cryptohash-sha256";
      url = "";
      synopsis = "Fast, pure and practical SHA-256 implementation";
      description = "A practical incremental and one-pass, pure API to the\n<https://en.wikipedia.org/wiki/SHA-2 SHA-256 hash algorithm>\n(including <https://en.wikipedia.org/wiki/HMAC HMAC> support)\nwith performance close to the fastest implementations available in other languages.\n\nThe implementation is made in C with a haskell FFI wrapper that hides the C implementation.\n\nNOTE: This package has been forked off @cryptohash-0.11.7@ because the @cryptohash@ package has been\ndeprecated and so this package continues to satisfy the need for a lightweight package\nproviding the SHA256 hash algorithm without any dependencies on packages other than\n@base@ and @bytestring@.\n\nConsequently, this package can be used as a drop-in replacement for @cryptohash@'s\n\"Crypto.Hash.SHA256\" module, though with a clearly smaller footprint.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test-sha256" = {
          depends  = [
            (hsPkgs.cryptohash-sha256)
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
        "bench-sha256" = {
          depends  = [
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }