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
      identifier = { name = "tfp"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Henning Thielemann, 2008 Peter Gavin";
      maintainer = "haskell@henning-thielemann.de";
      author = "Peter Gavin, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/Type_arithmetic";
      url = "";
      synopsis = "Type-level integers, booleans, lists using type families";
      description = "TFP is an abbreviation for Type Family Programming.\nIt provides implementations of type-level integers and booleans,\nand (eventually) simple type-level data structures.\nIt uses type families as functions to produce new types,\nwhich provides an intuitive way to parameterize data types\nand functions on numerical values at compile time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "tfp-test" = {
          depends = [
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }