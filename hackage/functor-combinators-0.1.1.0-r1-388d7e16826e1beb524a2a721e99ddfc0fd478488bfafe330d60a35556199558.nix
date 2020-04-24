{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "functor-combinators"; version = "0.1.1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deriving-compat" or ((hsPkgs.pkgs-errors).buildDepError "deriving-compat"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."kan-extensions" or ((hsPkgs.pkgs-errors).buildDepError "kan-extensions"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."natural-transformation" or ((hsPkgs.pkgs-errors).buildDepError "natural-transformation"))
          (hsPkgs."nonempty-containers" or ((hsPkgs.pkgs-errors).buildDepError "nonempty-containers"))
          (hsPkgs."pointed" or ((hsPkgs.pkgs-errors).buildDepError "pointed"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."recursion-schemes" or ((hsPkgs.pkgs-errors).buildDepError "recursion-schemes"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."trivial-constraint" or ((hsPkgs.pkgs-errors).buildDepError "trivial-constraint"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          ];
        buildable = true;
        };
      tests = {
        "functor-combinators-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."functor-combinators" or ((hsPkgs.pkgs-errors).buildDepError "functor-combinators"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."nonempty-containers" or ((hsPkgs.pkgs-errors).buildDepError "nonempty-containers"))
            (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }