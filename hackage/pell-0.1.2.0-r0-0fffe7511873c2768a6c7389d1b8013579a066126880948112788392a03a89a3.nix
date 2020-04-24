{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "pell"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "(c) 2016 by Dr. Lars Brünjes";
      maintainer = "brunjlar@gmail.com";
      author = "Lars Bruenjes";
      homepage = "https://github.com/brunjlar/pell";
      url = "";
      synopsis = "Package to solve the Generalized Pell Equation.";
      description = "Finds all solutions of the generalized Pell Equation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test-pell" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."cabal-test-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "cabal-test-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }