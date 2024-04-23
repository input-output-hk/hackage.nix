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
      specVersion = "1.10";
      identifier = { name = "buffer-builder-aeson"; version = "0.2.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "andy.friesen@gmail.com";
      author = "Andy Friesen, Chad Austin";
      homepage = "";
      url = "";
      synopsis = "Serialize Aeson values with Data.BufferBuilder";
      description = "A very fast BufferBuilder-based JSON encoder for Aeson.\n\nThe whole library is a a single orphan instance for Aeson.Value.\n\n> import Data.Aeson (object, (.=), Value (..))\n> import Data.BufferBuilder.Json (encodeJson)\n> import Data.BufferBuilder.Aeson ()\n> import qualified Data.ByteString as BS\n>\n> stuff :: Value\n> stuff = Array\n>     [ object\n>         [ \"name\" .= (\"eggs\" :: String)\n>         , \"price\" .= (3.141592 :: Double)\n>         ]\n>     , object\n>         [ \"name\" .= (\"cheese\" :: String)\n>         , \"price\" .= (0.57721 :: Double)\n>         ]\n>     ]\n>\n> main :: IO ()\n> main = do\n>     BS.putStrLn $ encodeJson stuff";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."buffer-builder" or (errorHandler.buildDepError "buffer-builder"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."buffer-builder-aeson" or (errorHandler.buildDepError "buffer-builder-aeson"))
            (hsPkgs."buffer-builder" or (errorHandler.buildDepError "buffer-builder"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "json-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."buffer-builder" or (errorHandler.buildDepError "buffer-builder"))
            (hsPkgs."buffer-builder-aeson" or (errorHandler.buildDepError "buffer-builder-aeson"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }