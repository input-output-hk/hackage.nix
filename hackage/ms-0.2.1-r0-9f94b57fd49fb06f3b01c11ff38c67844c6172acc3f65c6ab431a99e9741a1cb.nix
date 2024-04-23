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
      specVersion = "1.10";
      identifier = { name = "ms"; version = "0.2.1"; };
      license = "BSD-2-Clause";
      copyright = "(C) 2015 Ricky Elrod, Tony Morris";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod, Tony Morris";
      homepage = "https://github.com/relrod/ms";
      url = "";
      synopsis = "metric spaces";
      description = "A 'MetricSpace' is a set together with a notion of distance between\nelements. Distance is computed by a function 'dist' which has the following\nfour laws:\n\n(1) __non-negative__: @forall x y. 'dist' x y >= 0@\n\n(2) __identity of indiscernibles__: @forall x y. 'dist' x y == 0 \\<=\\> x == y@\n\n(3) __symmetry__: @forall x y. dist x y == 'dist' y x@\n\n(4) __triangle inequality__: @forall x y z. 'dist' x z <= 'dist' x y + 'dist' y z@\n\nSee the Wikipedia <https://en.wikipedia.org/wiki/Metric_space article on metric spaces>\nfor more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."ms" or (errorHandler.buildDepError "ms"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }