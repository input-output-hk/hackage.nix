{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      aeson = true;
      semigroupoids = true;
      semirings = true;
      vector = true;
      unary-laws = true;
      binary-laws = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "quickcheck-classes"; version = "0.6.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin, chessai";
      homepage = "https://github.com/andrewthad/quickcheck-classes#readme";
      url = "";
      synopsis = "QuickCheck common typeclasses";
      description = "This library provides QuickCheck properties to ensure\nthat typeclass instances adhere to the set of laws that\nthey are supposed to. There are other libraries that do\nsimilar things, such as `genvalidity-hspec` and `checkers`.\nThis library differs from other solutions by not introducing\nany new typeclasses that the user needs to learn.\n\n/Note:/ on GHC < 8.5, this library uses the higher-kinded typeclasses\n('Data.Functor.Classes.Show1', 'Data.Functor.Classes.Eq1', 'Data.Functor.Classes.Ord1', etc.),\nbut on GHC >= 8.5, it uses `-XQuantifiedConstraints` to express these\nconstraints more cleanly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.bifunctors)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.fail)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).gt "7.4" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs.ghc-prim)) ++ (pkgs.lib).optionals (flags.unary-laws) [
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
          ]) ++ (pkgs.lib).optionals (flags.binary-laws) [
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
          ]) ++ (pkgs.lib).optional (flags.aeson) (hsPkgs.aeson)) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs.semigroupoids)) ++ (pkgs.lib).optional (flags.semirings) (hsPkgs.semirings)) ++ (pkgs.lib).optional (flags.vector) (hsPkgs.vector);
        };
      tests = {
        "basic" = {
          depends = (([
            (hsPkgs.base)
            (hsPkgs.base-orphans)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.transformers)
            (hsPkgs.tagged)
            ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs.aeson)) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs.semigroupoids)) ++ (pkgs.lib).optional (flags.vector) (hsPkgs.vector);
          };
        "advanced" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base-orphans)
            (hsPkgs.containers)
            (hsPkgs.primitive)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }