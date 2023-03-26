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
    flags = {
      aeson = true;
      semigroupoids = true;
      semirings = true;
      vector = true;
      unary-laws = true;
      binary-laws = true;
      };
    package = {
      specVersion = "2.4";
      identifier = { name = "quickcheck-classes"; version = "0.6.5.0"; };
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
        depends = (((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-addr" or (errorHandler.buildDepError "primitive-addr"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."quickcheck-classes-base" or (errorHandler.buildDepError "quickcheck-classes-base"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.0") [
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).gt "7.4" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.unary-laws) [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ]) ++ (pkgs.lib).optionals (flags.binary-laws) [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ]) ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))) ++ (pkgs.lib).optional (flags.semirings) (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))) ++ (pkgs.lib).optional (flags.vector) (hsPkgs."vector" or (errorHandler.buildDepError "vector"));
        buildable = true;
        };
      tests = {
        "basic" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))) ++ (pkgs.lib).optional (flags.vector) (hsPkgs."vector" or (errorHandler.buildDepError "vector"));
          buildable = true;
          };
        "advanced" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "8.6"
            then false
            else true;
          };
        };
      };
    }