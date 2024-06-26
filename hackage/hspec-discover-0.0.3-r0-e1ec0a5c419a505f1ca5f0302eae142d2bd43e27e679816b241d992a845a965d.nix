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
      identifier = { name = "hspec-discover"; version = "0.0.3"; };
      license = "MIT";
      copyright = "(c) 2012 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Automatically discover and run Hspec tests";
      description = "Say you have a driver module for your test suite.\n\n> module Main where\n>\n> import Test.Hspec.Monadic\n>\n> import qualified FooSpec\n> import qualified Foo.BarSpec\n> import qualified BazSpec\n>\n> main :: IO ()\n> main = hspecX $ do\n>   describe \"Foo\"     FooSpec.spec\n>   describe \"Foo.Bar\" Foo.BarSpec.spec\n>   describe \"Baz\"     BazSpec.spec\n\nThen you can replace it with the following.\n\n> {-# OPTIONS_GHC -F -pgmF hspec-discover #-}\n\nAll files with a name that ends in @Spec.hs@ are include in\nthe generated test suite.  And it is assumed, that they\nexport a @spec@ of type `Test.Hspec.Monadic.Specs`.\n\nFull documentation is here:\n<https://github.com/sol/hspec-discover#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
        ];
        buildable = true;
      };
      exes = {
        "hspec-discover" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-shouldbe" or (errorHandler.buildDepError "hspec-shouldbe"))
          ];
          buildable = true;
        };
      };
    };
  }