{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "functor-combinators"; version = "0.1.1.1"; };
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
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.comonad)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.deriving-compat)
          (hsPkgs.free)
          (hsPkgs.kan-extensions)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.natural-transformation)
          (hsPkgs.nonempty-containers)
          (hsPkgs.pointed)
          (hsPkgs.profunctors)
          (hsPkgs.semigroupoids)
          (hsPkgs.tagged)
          (hsPkgs.these)
          (hsPkgs.transformers)
          (hsPkgs.trivial-constraint)
          (hsPkgs.vinyl)
          ];
        };
      tests = {
        "functor-combinators-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.dependent-sum)
            (hsPkgs.free)
            (hsPkgs.functor-combinators)
            (hsPkgs.hedgehog)
            (hsPkgs.nonempty-containers)
            (hsPkgs.semigroupoids)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }