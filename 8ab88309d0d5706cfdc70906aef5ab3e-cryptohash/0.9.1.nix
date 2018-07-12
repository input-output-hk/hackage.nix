{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      cryptoapi = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cryptohash";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-cryptohash";
        url = "";
        synopsis = "collection of crypto hashes, fast, pure and practical";
        description = "A collection of crypto hashes, with a practical incremental and one-pass, pure APIs,\nwith performance close to the fastest implementations available in others languages.\n\nThe implementations are made in C with a haskell FFI wrapper that hide the C implementation.\n\nSimple examples using the unified API:\n\n> import Crypto.Hash\n>\n> sha1 :: ByteString -> Digest SHA1\n> sha1 = hash\n>\n> hexSha3_512 :: ByteString -> String\n> hexSha3_512 bs = show (hash bs :: Digest SHA3_512)\n\nSimple examples using the module API:\n\n> import qualified Crypto.Hash.SHA1 as SHA1\n>\n> main = putStrLn \$ show \$ SHA1.hash (Data.ByteString.pack [1..256])\n\n> import qualified Crypto.Hash.SHA3 as SHA3\n>\n> main = putStrLn \$ show \$ digest\n>   where digest = SHA3.finalize ctx\n>         ctx    = foldl' SHA3.update iCtx (map Data.ByteString.pack [ [1,2,3], [4,5,6] ]\n>         iCtx   = SHA3.init 224";
        buildType = "Simple";
      };
      components = {
        "cryptohash" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optionals _flags.cryptoapi [
            hsPkgs.crypto-api
            hsPkgs.tagged
            hsPkgs.cereal
          ];
        };
        tests = {
          "test-kat" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.cryptohash
            ];
          };
        };
        benchmarks = {
          "bench-hashes" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.cryptohash
            ];
          };
          "bench-api" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.cryptohash
              hsPkgs.crypto-api
            ];
          };
        };
      };
    }