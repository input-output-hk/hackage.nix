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
      identifier = { name = "rematch"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "Tom Crayford 2013";
      maintainer = "tcrayford@googlemail.com";
      author = "Tom Crayford";
      homepage = "";
      url = "";
      synopsis = "A simple api for matchers";
      description = "Rematch is a simple library of matchers, which express rules\nthat can pass or fail. Matchers also report their failure with\nhuman readable output. Custom matchers can be build, and\nmatchers can be combined using several predefined combinators\nor you can write your own.\nMatchers are often used in automated tests to provide expressive\nfailure messages.\nRematch is very similar to, and very inspired by the hamcrest\nlibrary for Java";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }