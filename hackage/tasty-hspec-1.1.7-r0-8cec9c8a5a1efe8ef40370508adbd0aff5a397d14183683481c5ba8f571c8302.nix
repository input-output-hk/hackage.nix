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
      specVersion = "2.0";
      identifier = { name = "tasty-hspec"; version = "1.1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mitchellwrosen@gmail.com";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/tasty-hspec";
      url = "";
      synopsis = "Hspec support for the Tasty test framework.";
      description = "This package provides a Tasty provider for Hspec test\nsuites.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
          (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
      };
    };
  }