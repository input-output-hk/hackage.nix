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
      specVersion = "2.2";
      identifier = { name = "unicode-data-scripts"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "2022 Composewell Technologies and Contributors";
      maintainer = "dev@wismill.eu";
      author = "Composewell Technologies and Contributors";
      homepage = "http://github.com/composewell/unicode-data";
      url = "";
      synopsis = "Unicode characters scripts";
      description = "@unicode-data-scripts@ provides Haskell APIs to access the Unicode\ncharacter <https://www.unicode.org/reports/tr24/ scripts> from the\n<https://www.unicode.org/ucd/ Unicode character database> (UCD).\n\nThe Haskell data structures are generated programmatically from the UCD files.\nThe latest Unicode version supported by this library is\n@<https://www.unicode.org/versions/Unicode14.0.0/ 14.0.0>@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
            (hsPkgs."unicode-data-scripts" or (errorHandler.buildDepError "unicode-data-scripts"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
            (hsPkgs."unicode-data-scripts" or (errorHandler.buildDepError "unicode-data-scripts"))
            ];
          buildable = true;
          };
        };
      };
    }