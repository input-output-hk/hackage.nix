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
    flags = { export-all-chars = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "unicode-data-names"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "2022 Composewell Technologies and Contributors";
      maintainer = "dev@wismill.eu";
      author = "Composewell Technologies and Contributors";
      homepage = "http://github.com/composewell/unicode-data";
      url = "";
      synopsis = "Unicode characters names and aliases";
      description = "@unicode-data-names@ provides Haskell APIs to access the Unicode\ncharacter /names and aliases/ from the\n<https://www.unicode.org/ucd/ Unicode character database> (UCD).\n\nThe Haskell data structures are generated programmatically from the UCD files.\nThe latest Unicode version supported by this library is\n@<https://www.unicode.org/versions/Unicode15.0.0/ 15.0.0>@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "export-all-chars" = {
          depends = pkgs.lib.optionals (flags.export-all-chars) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
            (hsPkgs."unicode-data-names" or (errorHandler.buildDepError "unicode-data-names"))
          ];
          buildable = if flags.export-all-chars then true else false;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
            (hsPkgs."unicode-data-names" or (errorHandler.buildDepError "unicode-data-names"))
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
            (hsPkgs."unicode-data-names" or (errorHandler.buildDepError "unicode-data-names"))
          ];
          buildable = true;
        };
      };
    };
  }