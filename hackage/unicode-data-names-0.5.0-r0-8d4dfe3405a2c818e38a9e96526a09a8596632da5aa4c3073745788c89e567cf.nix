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
    flags = {
      has-text = false;
      has-bytestring = false;
      dev-has-icu = false;
      export-all-chars = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "unicode-data-names"; version = "0.5.0"; };
      license = "Apache-2.0";
      copyright = "2022 Composewell Technologies and Contributors";
      maintainer = "dev@wismill.eu";
      author = "Composewell Technologies and Contributors";
      homepage = "http://github.com/composewell/unicode-data";
      url = "";
      synopsis = "Unicode characters names and aliases";
      description = "@unicode-data-names@ provides Haskell APIs to access the Unicode\ncharacter /names and aliases/ from the\n<https://www.unicode.org/ucd/ Unicode character database> (UCD).\n\nThe Haskell data structures are generated programmatically from the UCD files.\nThe latest Unicode version supported by this library is\n@<https://www.unicode.org/versions/Unicode16.0.0/ 16.0.0>@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.0.0") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ pkgs.lib.optional (flags.has-text) (hsPkgs."text" or (errorHandler.buildDepError "text"))) ++ pkgs.lib.optional (flags.has-bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"));
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
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
            (hsPkgs."unicode-data-names" or (errorHandler.buildDepError "unicode-data-names"))
          ] ++ pkgs.lib.optional (flags.has-text) (hsPkgs."text" or (errorHandler.buildDepError "text"))) ++ pkgs.lib.optional (flags.has-bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ pkgs.lib.optional (flags.dev-has-icu) (hsPkgs."icu" or (errorHandler.buildDepError "icu"));
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
            (hsPkgs."unicode-data-names" or (errorHandler.buildDepError "unicode-data-names"))
          ] ++ pkgs.lib.optional (flags.has-text) (hsPkgs."text" or (errorHandler.buildDepError "text"))) ++ pkgs.lib.optional (flags.has-bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ pkgs.lib.optional (flags.dev-has-icu) (hsPkgs."icu" or (errorHandler.buildDepError "icu"));
          buildable = true;
        };
      };
    };
  }