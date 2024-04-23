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
      identifier = { name = "easytest"; version = "0.3"; };
      license = "MIT";
      copyright = "Copyright (C) 2017-2019 Joel Burget, Copyright (C) 2016 Paul Chiusano and contributors";
      maintainer = "Joel Burget <joelburget@gmail.com>";
      author = "Joel Burget, Paul Chiusano";
      homepage = "https://github.com/joelburget/easytest";
      url = "";
      synopsis = "Simple, expressive testing library";
      description = "EasyTest is a simple testing toolkit for unit- and property-testing. It's based on the hedgehog property-testing system. Here's an example usage:\n\n> module Main where\n>\n> import           EasyTest\n> import qualified Hedgehog.Gen   as Gen\n> import qualified Hedgehog.Range as Range\n>\n> suite :: Test\n> suite = tests\n>   [ scope \"addition.ex1\" $ unitTest $ 1 + 1 === 2\n>   , scope \"addition.ex2\" $ unitTest $ 2 + 3 === 5\n>   , scope \"list.reversal\" $ property $ do\n>       ns <- forAll $\n>         Gen.list (Range.singleton 10) (Gen.int Range.constantBounded)\n>       reverse (reverse ns) === ns\n>   -- equivalent to `scope \"addition.ex3\"`\n>   , scope \"addition\" . scope \"ex3\" $ unitTest $ 3 + 3 === 6\n>   , scope \"always passes\" $ unitTest success -- record a success result\n>   , scope \"failing test\" $ crash \"oh noes!!\"\n>   ]\n>\n> -- NB: `run suite` would run all tests, but we only run\n> -- tests whose scopes are prefixed by \"addition\"\n> main :: IO Summary\n> main = runOnly \"addition\" suite\n\nThis generates the output:\n\n> ━━━ runOnly \"addition\" ━━━\n>   ✓ addition.ex1 passed 1 test.\n>   ✓ addition.ex2 passed 1 test.\n>   ⚐ list.reversal gave up after 1 discard, passed 0 tests.\n>   ✓ addition.ex3 passed 1 test.\n>   ⚐ always passes gave up after 1 discard, passed 0 tests.\n>   ⚐ failing test gave up after 1 discard, passed 0 tests.\n>   ⚐ 3 gave up, 3 succeeded.\nWe write tests with ordinary Haskell code, with control flow explicit and under programmer control.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."easytest" or (errorHandler.buildDepError "easytest"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }