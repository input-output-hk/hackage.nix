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
      specVersion = "1.14";
      identifier = { name = "test-sandbox-quickcheck"; version = "0.0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Benjamin Surma <benjamin.surma@gree.net>";
      author = "Benjamin Surma <benjamin.surma@gree.net>";
      homepage = "http://gree.github.io/haskell-test-sandbox/";
      url = "";
      synopsis = "QuickCheck convenience functions for use with test-sandbox";
      description = "This package provides wrappers around the Test.QuickCheck property testing functions,\nallowing them to be used easily in the Test.Sandbox monad provided by the test-sandbox package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."test-sandbox" or (errorHandler.buildDepError "test-sandbox"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }