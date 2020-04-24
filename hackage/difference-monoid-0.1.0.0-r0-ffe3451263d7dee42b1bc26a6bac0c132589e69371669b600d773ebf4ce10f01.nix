{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "difference-monoid"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/difference-monoid#readme";
      url = "";
      synopsis = "";
      description = "A Difference Monoid, to add subtraction to arbitrary monoids. Please see the README on Github at <https://github.com/oisdk/difference-monoid#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or ((hsPkgs.pkgs-errors).buildDepError "adjunctions"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          (hsPkgs."groups" or ((hsPkgs.pkgs-errors).buildDepError "groups"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      tests = {
        "difference-monoid-doctests" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."adjunctions" or ((hsPkgs.pkgs-errors).buildDepError "adjunctions"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."difference-monoid" or ((hsPkgs.pkgs-errors).buildDepError "difference-monoid"))
            (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."groups" or ((hsPkgs.pkgs-errors).buildDepError "groups"))
            (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
            ];
          buildable = true;
          };
        "difference-monoid-test" = {
          depends = [
            (hsPkgs."adjunctions" or ((hsPkgs.pkgs-errors).buildDepError "adjunctions"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."difference-monoid" or ((hsPkgs.pkgs-errors).buildDepError "difference-monoid"))
            (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
            (hsPkgs."groups" or ((hsPkgs.pkgs-errors).buildDepError "groups"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hedgehog-checkers" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog-checkers"))
            (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
            ];
          buildable = true;
          };
        };
      };
    }