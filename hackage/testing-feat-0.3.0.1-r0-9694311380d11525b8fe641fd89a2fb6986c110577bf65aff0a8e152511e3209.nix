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
      specVersion = "1.2";
      identifier = { name = "testing-feat"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Jonas Duregård";
      maintainer = "jonas.duregard@gmail.com";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "Functional Enumeration of Abstract Types";
      description = "Feat (Functional Enumeration of Abstract Types) provides\nenumerations as functions from natural numbers to values\n(similar to @toEnum@ but for any algebraic data type). This\ncan be used for SmallCheck-style systematic testing,\nQuickCheck style random testing, and hybrids of the two.\n\nThe enumerators are defined in a very boilerplate manner\nand there is a Template Haskell script for deriving the\nclass instance for most types.\n\"Test.Feat\" contain a subset of the other modules that\nshould be sufficient for most test usage. There\nare some small and large example in the tar\nball.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."tagshare" or (errorHandler.buildDepError "tagshare"))
        ];
        buildable = true;
      };
    };
  }