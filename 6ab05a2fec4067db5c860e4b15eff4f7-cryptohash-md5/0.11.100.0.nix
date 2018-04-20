{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cryptohash-md5";
          version = "0.11.100.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez, Herbert Valerio Riedel";
        maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
        author = "";
        homepage = "https://github.com/hvr/cryptohash-md5";
        url = "";
        synopsis = "Fast, pure and practical MD5 implementation";
        description = "A practical incremental and one-pass, pure API to the\n<https://en.wikipedia.org/wiki/MD5 MD5 hash algorithm>\n(including <https://en.wikipedia.org/wiki/HMAC HMAC> support)\nwith performance close to the fastest implementations available in other languages.\n\nThe implementation is made in C with a haskell FFI wrapper that hides the C implementation.\n\nNOTE: This package has been forked off @cryptohash-0.11.7@ because the @cryptohash@ package\nhas been deprecated and so this package continues to satisfy the need for a lightweight package\nproviding the MD5 hash algorithm without any dependencies on packages other than\n@base@ and @bytestring@.\n\nConsequently, this package can be used as a drop-in replacement for @cryptohash@'s\n\"Crypto.Hash.MD5\" module, though with a clearly smaller footprint.";
        buildType = "Simple";
      };
      components = {
        cryptohash-md5 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          test-md5 = {
            depends  = [
              hsPkgs.cryptohash-md5
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.base16-bytestring
              hsPkgs.pureMD5
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
            ];
          };
        };
        benchmarks = {
          bench-md5 = {
            depends  = [
              hsPkgs.cryptohash-md5
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
            ];
          };
        };
      };
    }