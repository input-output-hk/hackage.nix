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
      identifier = { name = "unicode-data-security"; version = "0.6.0"; };
      license = "Apache-2.0";
      copyright = "2022 Composewell Technologies and Contributors";
      maintainer = "dev@wismill.eu";
      author = "Composewell Technologies and Contributors";
      homepage = "http://github.com/composewell/unicode-data";
      url = "";
      synopsis = "Unicode security mechanisms database";
      description = "@unicode-data-security@ provides Haskell APIs to access the\n<https://www.unicode.org/reports/tr39/ Unicode security mechanisms>\n<https://www.unicode.org/Public/security/ database>.\n\nThe Haskell data structures are generated programmatically from the database.\nThe latest Unicode version supported by this library is\n@<https://www.unicode.org/versions/Unicode17.0.0/ 17.0.0>@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.0.0") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unicode-data-security" or (errorHandler.buildDepError "unicode-data-security"))
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
            (hsPkgs."unicode-data-security" or (errorHandler.buildDepError "unicode-data-security"))
          ];
          buildable = true;
        };
      };
    };
  }