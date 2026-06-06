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
      identifier = { name = "unicode-data"; version = "0.8.0"; };
      license = "Apache-2.0";
      copyright = "2020 Composewell Technologies and Contributors";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies and Contributors";
      homepage = "http://github.com/composewell/unicode-data";
      url = "";
      synopsis = "Access Unicode Character Database (UCD)";
      description = "@unicode-data@ provides Haskell APIs to efficiently access the\n<https://www.unicode.org/ucd/ Unicode character database> (UCD).\nPerformance is the primary goal in the design of this package.\n\nThe Haskell data structures are generated programmatically from the UCD files.\nThe latest Unicode version supported by this library is\n@<https://www.unicode.org/versions/Unicode17.0.0/ 17.0.0>@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.0") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
          ] ++ pkgs.lib.optional (flags.dev-has-icu) (hsPkgs."icu" or (errorHandler.buildDepError "icu"));
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
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.0") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = true;
        };
      };
    };
  }