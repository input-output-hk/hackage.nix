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
      specVersion = "1.10";
      identifier = { name = "catamorphism"; version = "0.6.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, 2015, 2016, 2017, 2018 Frerich Raabe <frerich.raabe@gmail.com>";
      maintainer = "frerich.raabe@gmail.com";
      author = "Frerich Raabe";
      homepage = "https://github.com/frerich/catamorphism";
      url = "";
      synopsis = "Exposes a Template Haskell function for generating catamorphisms.";
      description = "This module exposes a 'makeCata' function which can create catamorphisms for\narbitrary Haskell types. Catamorphisms are functions which deconstruct some\nvalue by replacing each data constructor with a custom function yielding a\nnew value. See <http://www.haskell.org/haskellwiki/Catamorphisms> for a more\nin-depth discussion of catamorphisms in Haskell.\n\nThe Haskell base package already comes with a couple of standard\ncatamorphisms, such as 'maybe' (for 'Maybe' values). The 'maybe' function\ncould have been generated using 'makeCata' as follows:\n\n> -- Defines 'maybe :: b -> (a -> b) -> Maybe a -> b'\n> \$(makeCata defaultOptions ''Maybe)\n\nHowever, catamorphisms are especially useful for recursive data structures.\nConsider the following simple example which defines a basic data type for\nmodelling sums of numbers, supporting variables:\n\n> import Data.Morphism.Cata\n> import Data.Maybe (fromJust)\n>\n> data Expr a = Number a\n>             | Variable Char\n>             | Sum (Expr a) (Expr a)\n>\n> -- Defines 'expr :: (a -> b) -> (Char -> b) -> (b -> b -> b) -> Expr a -> b'\n> \$(makeCata defaultOptions ''Expr)\n\nThe 'makeCata' invocation defines a 'expr' function which works like a fold on\n'Expr' values; it can be used to implement various useful other functions:\n\n> -- Evaluate an Expr, given some variable bindings\n> eval :: Num a => [(Char, a)] -> Expr a -> a\n> eval vars = expr id (fromJust . (`lookup` vars)) (+)\n>\n> -- Pretty-prints an Expr\n> pprint :: Show a => Expr a -> String\n> pprint = expr show show (\\a b -> a ++ \" + \" ++ b)\n>\n> -- Counts the number of variables used in an expr\n> numVars :: Expr a -> Int\n> numVars = expr (const 1) (const 0) (+)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."catamorphism" or (buildDepError "catamorphism"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }