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
      specVersion = "1.12";
      identifier = { name = "functor-combinators"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2019";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/functor-combinators#readme";
      url = "";
      synopsis = "Tools for functor combinator-based program design";
      description = "Tools for working with /functor combinators/: types that take functors (or\nother indexed types) and returns a new functor that \"enhances\" or \"mixes\"\nthem in some way.  In the process, you can design featureful programs by\ncomposing smaller \"primitives\" using basic unversal combinators.\n\nThe main entry point is \"Data.Functor.Combinators\", but more fine-grained\nfunctionality and extra combinators (some of them re-implementations for\ncompatibility) are available in other modules as well.\n\nThis library does not define new functor combinators for the most part,\nbut rather re-exports them from different parts of the Haskell ecosystem\nand provides a uniform interface.\n\nSee the README for a quick overview, and also\n<https://blog.jle.im/entry/functor-combinatorpedia.html> for an in-depth\ndive into the motivation behind functor combinator-driven development,\nexamples of the functor combinators in this library, and details about how\nto use these abstractions!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deriving-compat" or (buildDepError "deriving-compat"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
          (hsPkgs."nonempty-containers" or (buildDepError "nonempty-containers"))
          (hsPkgs."pointed" or (buildDepError "pointed"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."recursion-schemes" or (buildDepError "recursion-schemes"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."these" or (buildDepError "these"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."trivial-constraint" or (buildDepError "trivial-constraint"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          ];
        buildable = true;
        };
      tests = {
        "functor-combinators-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."functor-combinators" or (buildDepError "functor-combinators"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."nonempty-containers" or (buildDepError "nonempty-containers"))
            (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }