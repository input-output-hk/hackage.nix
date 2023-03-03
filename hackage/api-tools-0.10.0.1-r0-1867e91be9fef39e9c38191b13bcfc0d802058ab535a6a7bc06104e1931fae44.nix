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
      identifier = { name = "api-tools"; version = "0.10.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Iris Connect 2013-2022";
      maintainer = "Chris Dornan <chrisd@irisconnect.co.uk> and Adam Gundry <adam@well-typed.com>";
      author = "Chris Dornan <chrisd@irisconnect.co.uk> and Adam Gundry <adam@well-typed.com>";
      homepage = "http://github.com/iconnect/api-tools";
      url = "";
      synopsis = "DSL for generating API boilerplate and docs";
      description = "api-tools provides a compact DSL for describing an API.\nIt uses Template Haskell to generate the\ncorresponding data types and assorted tools for\nworking with it, including Aeson and QuickCheck\ninstances for converting between JSON and the\ngenerated types and writing unit tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
        buildable = true;
        };
      exes = {
        "migration-tool" = {
          depends = [
            (hsPkgs."api-tools" or (errorHandler.buildDepError "api-tools"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "perf-test" = {
          depends = [
            (hsPkgs."api-tools" or (errorHandler.buildDepError "api-tools"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-api-tools" = {
          depends = [
            (hsPkgs."api-tools" or (errorHandler.buildDepError "api-tools"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-time" = {
          depends = [
            (hsPkgs."api-tools" or (errorHandler.buildDepError "api-tools"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }