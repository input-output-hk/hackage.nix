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
      specVersion = "1.8";
      identifier = { name = "hashable-generics"; version = "1.1.8"; };
      license = "BSD-3-Clause";
      copyright = "2012, Clark Gaebel";
      maintainer = "cgaebel@uwaterloo.ca";
      author = "Clark Gaebel";
      homepage = "https://github.com/wowus/hashable-generics";
      url = "";
      synopsis = "Automatically generates Hashable instances with GHC.Generics.";
      description = "This package provides a \"GHC.Generics\"-based 'Data.Hashable.Generic.gHashWithSalt'\nfunction which can be used for providing a 'hashWithSalt' implementation.\nSee the documentation for the 'gHashWithSalt' function in the\n\"Data.Hashable.Generic\" module to get started.\n\nThis package is heavily inspired by deepseq-generics, which you may also find\nuseful.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hashable-generics" or (errorHandler.buildDepError "hashable-generics"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "compare-to-handrolled" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashable-generics" or (errorHandler.buildDepError "hashable-generics"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }