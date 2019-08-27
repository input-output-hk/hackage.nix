let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "test-framework-th"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oscar Finnsson";
      author = "Oscar Finnsson & Emil Nordling";
      homepage = "http://github.com/finnsson/test-generator";
      url = "";
      synopsis = "Automagically generate the HUnit- and Quickcheck-bulk-code using Template Haskell.";
      description = "@test-framework-th@ contains two interesting functions: @defaultMainGenerator@ and @testGroupGenerator@.\n\n@defaultMainGenerator@ will extract all functions beginning with case_ or prop_ in the module and put them in a testGroup.\n\n> -- file SomeModule.hs\n> ( -# OPTIONS_GHC -fglasgow-exts -XTemplateHaskell #- )\n> module SomeModule where\n> import Test.Framework.TH\n> import Test.Framework\n> import Test.HUnit\n> import Test.Framework.Providers.HUnit\n> import Test.Framework.Providers.QuickCheck2\n>\n> -- observe this line!\n> main = \$(defaultMainGenerator)\n> case_1 = do 1 @=? 1\n> case_2 = do 2 @=? 2\n> prop_reverse xs = reverse (reverse xs) == xs\n>    where types = xs::[Int]\n\nis the same as\n\n> -- file SomeModule.hs\n> ( -# OPTIONS_GHC -fglasgow-exts -XTemplateHaskell #- )\n> module SomeModule where\n> import Test.Framework.TH\n> import Test.Framework\n> import Test.HUnit\n> import Test.Framework.Providers.HUnit\n> import Test.Framework.Providers.QuickCheck2\n>\n> -- observe this line!\n> main =\n>   defaultMain [\n>     testGroup \"SomeModule\" [ testCase \"1\" case_1, testCase \"2\" case_2, testProperty \"reverse\" prop_reverse]\n>     ]\n>\n> case_1 = do 1 @=? 1\n> case_2 = do 2 @=? 2\n> prop_reverse xs = reverse (reverse xs) == xs\n>    where types = xs::[Int]\n\n@testGroupGenerator@ is like @defaultMainGenerator@ but without @defaultMain@. It is useful if you need a function for the testgroup\n(e.g. if you want to be able to call the testgroup from another module).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."test-framework" or (buildDepError "test-framework"))
          (hsPkgs."language-haskell-extract" or (buildDepError "language-haskell-extract"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      };
    }