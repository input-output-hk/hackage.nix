{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "buffer-builder-aeson";
          version = "0.2.0.0";
        };
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
        buffer-builder-aeson = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.integer-gmp
            hsPkgs.buffer-builder
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.scientific
            hsPkgs.bytestring
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.buffer-builder-aeson
              hsPkgs.buffer-builder
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.QuickCheck
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.scientific
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.text
              hsPkgs.hashable
              hsPkgs.attoparsec
              hsPkgs.aeson
            ];
          };
        };
        benchmarks = {
          json-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.buffer-builder
              hsPkgs.buffer-builder-aeson
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.vector
            ];
          };
        };
      };
    }