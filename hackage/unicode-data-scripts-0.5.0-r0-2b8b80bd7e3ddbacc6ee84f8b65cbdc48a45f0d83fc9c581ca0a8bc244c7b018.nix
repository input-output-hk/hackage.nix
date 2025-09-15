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
    flags = { dev-has-icu = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "unicode-data-scripts"; version = "0.5.0"; };
      license = "Apache-2.0";
      copyright = "2022 Composewell Technologies and Contributors";
      maintainer = "dev@wismill.eu";
      author = "Composewell Technologies and Contributors";
      homepage = "http://github.com/composewell/unicode-data";
      url = "";
      synopsis = "Unicode characters scripts";
      description = "@unicode-data-scripts@ provides Haskell APIs to access the Unicode\ncharacter <https://www.unicode.org/reports/tr24/ scripts> from the\n<https://www.unicode.org/ucd/ Unicode character database> (UCD).\n\nThe Haskell data structures are generated programmatically from the UCD files.\nThe latest Unicode version supported by this library is\n@<https://www.unicode.org/versions/Unicode16.0.0/ 16.0.0>@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.0.0") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unicode-data-scripts" or (errorHandler.buildDepError "unicode-data-scripts"))
          ] ++ pkgs.lib.optional (flags.dev-has-icu) (hsPkgs."icu" or (errorHandler.buildDepError "icu"));
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."unicode-data-scripts" or (errorHandler.buildDepError "unicode-data-scripts"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.0") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ pkgs.lib.optional (flags.dev-has-icu) (hsPkgs."icu" or (errorHandler.buildDepError "icu"));
          buildable = true;
        };
      };
    };
  }