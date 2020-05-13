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
      identifier = { name = "pptable"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2016 Guru Devanla";
      maintainer = "grdvnl@gmail.com";
      author = "Guru Devanla";
      homepage = "https://github.com/gdevanla/pptable#readme";
      url = "";
      synopsis = "Pretty Print containers in a tabular format";
      description = "When you are faced with tens of records data types contained in a list or similar structure if becomes difficult to view all records during iterative development. This library provides a generic funciton to print any such record types in a tabular format that makes visualizing the data more pleasing. Please see README.md for examples of this.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          ];
        buildable = true;
        };
      tests = {
        "pptable-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pptable" or (errorHandler.buildDepError "pptable"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
            ];
          buildable = true;
          };
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pptable" or (errorHandler.buildDepError "pptable"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            ];
          buildable = true;
          };
        };
      };
    }