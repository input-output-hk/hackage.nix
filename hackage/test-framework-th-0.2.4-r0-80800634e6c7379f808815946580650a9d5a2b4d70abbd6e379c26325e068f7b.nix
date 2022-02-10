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
      specVersion = "1.6";
      identifier = { name = "test-framework-th"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oscar Finnsson";
      author = "Oscar Finnsson & Emil Nordling";
      homepage = "http://github.com/finnsson/test-generator";
      url = "";
      synopsis = "Automagically generate the HUnit- and Quickcheck-bulk-code using Template Haskell.";
      description = "@test-framework-th@ contains two interesting functions: @defaultMainGenerator@ and @testGroupGenerator@.\n\n@defaultMainGenerator@ will extract all functions beginning with case_, prop_ or test_in the module and put them in a testGroup.\n\n> -- file SomeModule.hs\n> ( -# LANGUAGE TemplateHaskell #- )\n> module SomeModule where\n> import Test.Framework.TH\n> import Test.Framework\n> import Test.HUnit\n> import Test.Framework.Providers.HUnit\n> import Test.Framework.Providers.QuickCheck2\n>\n> -- observe this line!\n> main = $(defaultMainGenerator)\n> case_1 = do 1 @=? 1\n> case_2 = do 2 @=? 2\n> prop_reverse xs = reverse (reverse xs) == xs\n>    where types = xs::[Int]\n\nis the same as\n\n> -- file SomeModule.hs\n> ( -# LANGUAGE TemplateHaskell #- )\n> module SomeModule where\n> import Test.Framework.TH\n> import Test.Framework\n> import Test.HUnit\n> import Test.Framework.Providers.HUnit\n> import Test.Framework.Providers.QuickCheck2\n>\n> -- observe this line!\n> main =\n>   defaultMain [\n>     testGroup \"SomeModule\" [ testCase \"1\" case_1, testCase \"2\" case_2, testProperty \"reverse\" prop_reverse]\n>     ]\n>\n> case_1 = do 1 @=? 1\n> case_2 = do 2 @=? 2\n> prop_reverse xs = reverse (reverse xs) == xs\n>    where types = xs::[Int]\n\n@testGroupGenerator@ is like @defaultMainGenerator@ but without @defaultMain@. It is useful if you need a function for the testgroup\n(e.g. if you want to be able to call the testgroup from another module).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."language-haskell-extract" or (errorHandler.buildDepError "language-haskell-extract"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }