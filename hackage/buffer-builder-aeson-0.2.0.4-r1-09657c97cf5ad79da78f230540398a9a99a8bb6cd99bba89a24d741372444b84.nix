{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "buffer-builder-aeson"; version = "0.2.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "andy.friesen@gmail.com";
      author = "Andy Friesen";
      homepage = "";
      url = "";
      synopsis = "Serialize Aeson values with Data.BufferBuilder";
      description = "A very fast BufferBuilder-based JSON encoder for Aeson.\n\nThe whole library is a a single orphan instance for Aeson.Value.\n\n> import Data.Aeson (object, (.=), Value (..))\n> import Data.BufferBuilder.Json (encodeJson)\n> import Data.BufferBuilder.Aeson ()\n> import qualified Data.ByteString as BS\n>\n> stuff :: Value\n> stuff = Array\n>     [ object\n>         [ \"name\" .= (\"eggs\" :: String)\n>         , \"price\" .= (3.141592 :: Double)\n>         ]\n>     , object\n>         [ \"name\" .= (\"cheese\" :: String)\n>         , \"price\" .= (0.57721 :: Double)\n>         ]\n>     ]\n>\n> main :: IO ()\n> main = do\n>     BS.putStrLn \$ encodeJson stuff";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          (hsPkgs."buffer-builder" or ((hsPkgs.pkgs-errors).buildDepError "buffer-builder"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."buffer-builder-aeson" or ((hsPkgs.pkgs-errors).buildDepError "buffer-builder-aeson"))
            (hsPkgs."buffer-builder" or ((hsPkgs.pkgs-errors).buildDepError "buffer-builder"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "json-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."buffer-builder" or ((hsPkgs.pkgs-errors).buildDepError "buffer-builder"))
            (hsPkgs."buffer-builder-aeson" or ((hsPkgs.pkgs-errors).buildDepError "buffer-builder-aeson"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }