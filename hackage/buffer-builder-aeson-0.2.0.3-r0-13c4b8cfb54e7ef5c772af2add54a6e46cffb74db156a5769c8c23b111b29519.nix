let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "A very fast BufferBuilder-based JSON encoder for Aeson.\n\nThe whole library is a a single orphan instance for Aeson.Value.\n\n> import Data.Aeson (object, (.=), Value (..))\n> import Data.BufferBuilder.Json (encodeJson)\n> import Data.BufferBuilder.Aeson ()\n> import qualified Data.ByteString as BS\n>\n> stuff :: Value\n> stuff = Array\n>     [ object\n>         [ \"name\" .= (\"eggs\" :: String)\n>         , \"price\" .= (3.141592 :: Double)\n>         ]\n>     , object\n>         [ \"name\" .= (\"cheese\" :: String)\n>         , \"price\" .= (0.57721 :: Double)\n>         ]\n>     ]\n>\n> main :: IO ()\n> main = do\n>     BS.putStrLn \$ encodeJson stuff";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
          (hsPkgs."buffer-builder" or (buildDepError "buffer-builder"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."buffer-builder-aeson" or (buildDepError "buffer-builder-aeson"))
            (hsPkgs."buffer-builder" or (buildDepError "buffer-builder"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "json-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."buffer-builder" or (buildDepError "buffer-builder"))
            (hsPkgs."buffer-builder-aeson" or (buildDepError "buffer-builder-aeson"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }