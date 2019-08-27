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
      identifier = { name = "quickspec"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "2009-2013 Nick Smallbone";
      maintainer = "nicsma@chalmers.se";
      author = "Nick Smallbone";
      homepage = "https://github.com/nick8325/quickspec";
      url = "";
      synopsis = "Equational laws for free";
      description = "QuickSpec automatically finds equational properties of your program.\n\nGive it an API, i.e. a collection of functions, and it will spit out\nequations about those functions. For example, given @reverse@, @++@\nand @[]@, QuickSpec finds six laws:\n\n> xs++[] == xs\n> []++xs == xs\n> reverse [] == []\n> (xs++ys)++zs == xs++(ys++zs)\n> reverse (reverse xs) == xs\n> reverse xs++reverse ys == reverse (ys++xs)\n\nAll you have to provide is:\n\n* Some functions and constants to test. These are the /only/\nfunctions that will appear in the equations.\n\n* A collection of variables that can appear in the equations\n(@xs@, @ys@ and @zs@ in the example above).\n\n* 'Test.QuickCheck.Arbitrary' and 'Data.Typeable.Typeable' instances for the types you want to test.\n\nConsider this a pre-release. Everything is complete but undocumented\n:) The best place to start is the examples at\n<http://github.com/nick8325/quickspec/tree/master/examples>. There\nis also a paper at\n<http://www.cse.chalmers.se/~nicsma/quickspec.pdf>.\nEverything you need should be in the module \"Test.QuickSpec\".\n\nIf you want help, email me!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."spoon" or (buildDepError "spoon"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }