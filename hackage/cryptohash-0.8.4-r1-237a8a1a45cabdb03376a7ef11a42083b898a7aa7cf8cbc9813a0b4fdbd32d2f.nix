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
    flags = { cryptoapi = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cryptohash"; version = "0.8.4"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cryptohash";
      url = "";
      synopsis = "collection of crypto hashes, fast, pure and practical";
      description = "A collection of crypto hashes, with a practical incremental and one-pass, pure APIs,\nwith performance close to the fastest implementations available in others languages.\n\nThe implementations are made in C with a haskell FFI wrapper that hide the C implementation.\n\nSimple examples using the unified API:\n\n> import Crypto.Hash\n>\n> sha1 :: ByteString -> Digest SHA1\n> sha1 = hash\n>\n> hexSha3_512 :: ByteString -> String\n> hexSha3_512 bs = show (hash bs :: Digest SHA3_512)\n\nSimple examples using the module API:\n\n> import qualified Crypto.Hash.SHA1 as SHA1\n>\n> main = putStrLn $ show $ SHA1.hash (Data.ByteString.pack [1..256])\n\n> import qualified Crypto.Hash.SHA3 as SHA3\n>\n> main = putStrLn $ show $ digest\n>   where digest = SHA3.finalize ctx\n>         ctx    = foldl' SHA3.update iCtx (map Data.ByteString.pack [ [1,2,3], [4,5,6] ]\n>         iCtx   = SHA3.init 224";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optionals (flags.cryptoapi) [
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
        buildable = true;
        };
      tests = {
        "test-kat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-hashes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            ];
          buildable = true;
          };
        "bench-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            ];
          buildable = true;
          };
        };
      };
    }