{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "boolean-normal-forms"; version = "0.0.1"; };
      license = "MIT";
      copyright = "© Oleg Grenrus 2014";
      maintainer = "oleg.grenrus@iki.fi";
      author = "Oleg Grenrus";
      homepage = "";
      url = "";
      synopsis = "Boolean normal form: NNF, DNF & CNF";
      description = "The provided types that might be useful in symbolic manipulation of propositional logic expressions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cond" or ((hsPkgs.pkgs-errors).buildDepError "cond"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cond" or ((hsPkgs.pkgs-errors).buildDepError "cond"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."boolean-normal-forms" or ((hsPkgs.pkgs-errors).buildDepError "boolean-normal-forms"))
            ];
          buildable = true;
          };
        };
      };
    }