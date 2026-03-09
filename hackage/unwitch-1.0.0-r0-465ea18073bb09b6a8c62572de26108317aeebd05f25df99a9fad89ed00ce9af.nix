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
      specVersion = "3.0";
      identifier = { name = "unwitch"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2020 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/haskell-unwitch-project#readme";
      url = "";
      synopsis = "converts between primitives";
      description = "Removes the magic from witch.\nThis provides safe conversions like witch does.\nBut it [doesn't](https://jappie.me/death-to-type-classes.html) use [type classes](https://www.haskellforall.com/2012/05/scrap-your-type-classes.html)\nor exceptions.\nThis has a couple of advantages:\n\n1. No need to use type application for function selection.\n2. Functions get names that describe what they do.\n  This allows ctags to work as well.\n3. No trouble with orphans.\n4. Custom errors instead of the prelude based ones allow client\n  code to recover with typesafety even on partial conversions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."unwitch" or (errorHandler.buildDepError "unwitch"))
          ];
          buildable = true;
        };
      };
    };
  }