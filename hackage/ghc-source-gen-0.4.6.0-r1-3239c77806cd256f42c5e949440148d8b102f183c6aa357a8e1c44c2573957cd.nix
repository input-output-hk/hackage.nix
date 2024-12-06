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
      specVersion = "1.12";
      identifier = { name = "ghc-source-gen"; version = "0.4.6.0"; };
      license = "BSD-3-Clause";
      copyright = "Google LLC";
      maintainer = "judahjacobson@google.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/ghc-source-gen#readme";
      url = "";
      synopsis = "Constructs Haskell syntax trees for the GHC API.";
      description = "@ghc-source-gen@ is a library for generating Haskell source code.\nIt uses the <https://hackage.haskell.org/package/ghc ghc> library\nto support recent language extensions, and provides a simple, consistent\ninterface across several major versions of GHC.\n\nTo get started, take a look at the \"GHC.SourceGen\" module.\n\nFor more information, please see the <https://github.com/google/ghc-source-gen README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
      tests = {
        "name_test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-source-gen" or (errorHandler.buildDepError "ghc-source-gen"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "pprint_examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc-source-gen" or (errorHandler.buildDepError "ghc-source-gen"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "pprint_test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc-source-gen" or (errorHandler.buildDepError "ghc-source-gen"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }