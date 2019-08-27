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
      identifier = { name = "quickspec"; version = "2"; };
      license = "BSD-3-Clause";
      copyright = "2009-2018 Nick Smallbone";
      maintainer = "nicsma@chalmers.se";
      author = "Nick Smallbone";
      homepage = "https://github.com/nick8325/quickspec";
      url = "";
      synopsis = "Equational laws for free!";
      description = "QuickSpec takes your Haskell code and, as if by magic, discovers laws\nabout it. You give QuickSpec a collection of Haskell functions;\nQuickSpec tests your functions with QuickCheck and prints out laws which\nseem to hold.\n\nFor example, give QuickSpec the functions @reverse@, @++@ and @[]@, and\nit will find six laws:\n\n> reverse [] == []\n> xs ++ [] == xs\n> [] ++ xs == xs\n> reverse (reverse xs) == xs\n> (xs ++ ys) ++ zs == xs ++ (ys ++ zs)\n> reverse xs ++ reverse ys == reverse (ys ++ xs)\n\nQuickSpec can find equational laws as well as conditional equations. All\nyou need to supply are the functions to test, as well as @Ord@ and\n@Arbitrary@ instances for QuickSpec to use in testing; the rest is\nautomatic.\n\nFor information on how to use QuickSpec, see the documentation in the main\nmodule, \"QuickSpec\". You can also look in the\n@<https://github.com/nick8325/quickspec/tree/master/examples examples>@\ndirectory, for example at\n@<https://github.com/nick8325/quickspec/tree/master/examples/Lists.hs Lists.hs>@,\n@<https://github.com/nick8325/quickspec/tree/master/examples/IntSet.hs IntSet.hs>@, or\n@<https://github.com/nick8325/quickspec/tree/master/examples/Parsing.hs Parsing.hs>@.\nTo read about how\nQuickSpec works, see our paper,\n<http://www.cse.chalmers.se/~nicsma/papers/quickspec2.pdf Quick specifications for the busy programmer>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-lens-light" or (buildDepError "data-lens-light"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."twee-lib" or (buildDepError "twee-lib"))
          (hsPkgs."uglymemo" or (buildDepError "uglymemo"))
          ];
        };
      };
    }