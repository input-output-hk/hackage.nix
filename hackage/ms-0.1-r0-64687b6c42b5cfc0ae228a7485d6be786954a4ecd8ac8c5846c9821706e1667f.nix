{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ms"; version = "0.1"; };
      license = "BSD-2-Clause";
      copyright = "(C) 2015 Ricky Elrod, Tony Morris";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod, Tony Morris";
      homepage = "https://github.com/relrod/ms";
      url = "";
      synopsis = "metric spaces";
      description = "A 'MetricSpace' is a set together with a notion of distance between\nelements. Distance is computed by a function 'dist' which has the following\nfour laws:\n\n(1) __non-negative__: @forall x y. 'dist' x y >= 0@\n(2) __identity of indiscernibles__: @forall x y. 'dist' x y == 0 \\<=\\> x == y@\n(3) __symmetry__: @forall x y. dist x y == 'dist' y x@\n(4) __triangle inequality__: @forall x y z. 'dist' x z <= 'dist' x y + 'dist' y z@\n\nSee the Wikipedia <https://en.wikipedia.org/wiki/Metric_space article on\nmetric spaces> for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."ms" or ((hsPkgs.pkgs-errors).buildDepError "ms"))
            (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }