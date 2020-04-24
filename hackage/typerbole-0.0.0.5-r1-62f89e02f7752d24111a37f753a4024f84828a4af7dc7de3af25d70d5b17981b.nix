{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "typerbole"; version = "0.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2016 Fionan Haralddottir";
      maintainer = "ma302fh@gold.ac.uk";
      author = "Fionan Haralddottir";
      homepage = "https://github.com/Lokidottir/typerbole";
      url = "";
      synopsis = "A typesystems library with exaggerated claims";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-ordlist" or ((hsPkgs.pkgs-errors).buildDepError "data-ordlist"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."generic-random" or ((hsPkgs.pkgs-errors).buildDepError "generic-random"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          ];
        buildable = true;
        };
      tests = {
        "typerbole-testing" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."checkers" or ((hsPkgs.pkgs-errors).buildDepError "checkers"))
            (hsPkgs."typerbole" or ((hsPkgs.pkgs-errors).buildDepError "typerbole"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ];
          buildable = true;
          };
        };
      };
    }