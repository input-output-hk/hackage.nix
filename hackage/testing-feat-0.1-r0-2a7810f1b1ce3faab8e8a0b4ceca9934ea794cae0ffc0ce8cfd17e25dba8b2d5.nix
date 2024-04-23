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
      identifier = { name = "testing-feat"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Jonas Duregård";
      maintainer = "jonas.duregard@gmail.com";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "Functional enumeration for systematic and random testing";
      description = "Feat (Functional Enumeration of Abstract Types)\nprovides an enumeration as a function from natural\nnumbers to values (similar to @toEnum@). This can be used\nboth for SmallCheck-style systematic testing and QuickCheck\nstyle random testing, and hybrids of the two.\n\nThe enumerators are defined in a very boilerplate manner\nand there is a Template Haskell script for deriving the\nclass instance for most types.\n\"Test.Feat\" contain a subset of the other modules that\nshould be sufficient for most test usage. There\nis a large scale example in the tar ball (testing the\nTemplate Haskell pretty printer).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-memocombinators" or (errorHandler.buildDepError "data-memocombinators"))
        ];
        buildable = true;
      };
    };
  }