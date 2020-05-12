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
      specVersion = "0";
      identifier = { name = "test-framework-th"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oscar Finnsson";
      author = "Oscar Finnsson & Emil Nordling";
      homepage = "http://github.com/finnsson/test-generator";
      url = "";
      synopsis = "Automagically generate the HUnit- and Quickcheck-bulk-code using Template Haskell.";
      description = "@test-framework-th@ contains two interesting functions: @defaultMainGenerator@ and @testGroupGenerator@.\n\n@defaultMainGenerator@ will extract all functions beginning with case_ or prop_ in the module and put them in a testGroup.\n\n> module Foo where\n> main = \$(defaultMainGenerator)\n>\n> case_Two = 2 @=? 2\n> case_Hi = \"hi\" @=? \"hi\"\n> prop_Reverse xs = reverse (reverse xs) == xs\n>  where types = xs :: [Int]\n\nis the same as\n\n> module Foo where\n> main = defaultMain [testGroup \"Foo\" [testProperty \"Reverse\" prop_Reverse, testCase \"Two\" case_Two, testCase \"Hi\" case_Hi]\n>\n> case_Two = 2 @=? 2\n> case_Hi = \"hi\" @=? \"hi\"\n> prop_Reverse xs = reverse (reverse xs) == xs\n>  where types = xs :: [Int]\n\n@testGroupGenerator@ is like @defaultMainGenerator@ but without @defaultMain@. It is useful if you need a function for the testgroup\n(e.g. if you want to be able to call the testgroup from another module).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."language-haskell-extract" or (errorHandler.buildDepError "language-haskell-extract"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }