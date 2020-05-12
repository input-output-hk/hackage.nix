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
      specVersion = "1.8";
      identifier = { name = "WMSigner"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Ilya Smelkov <triplepointfive@gmail.com>";
      maintainer = "Ilya Smelkov <triplepointfive@gmail.com>";
      author = "Ilya Smelkov <triplepointfive@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "WebMoney authentication module";
      description = "Pure haskell implementation WMSigner authentication module.\n\nSimple examples:\n\n> import Data.Digest.Webmoney\n>\n> signer = newSigner (exponent :: [Word8) (modulus :: [Word8])\n>\n> main = do\n>   putStrLn \$ signUnsafe signer \"message\" -- static version\n>   sign signer \"message\" >>= putStrLn     -- randomized version";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "test-WMSigner" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }