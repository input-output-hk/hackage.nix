{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "arithmetic"; version = "1.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Natural number arithmetic";
      description = "This package implements a library of natural number arithmetic,\nincluding Montgomery multiplication, the Miller-Rabin primality\ntest, Lucas sequences, the Williams p+1 factorization method,\ncontinued fraction representations of natural number square roots,\nthe Jacobi symbol, the Tonelli-Shanks algorithm for finding square\nroots modulo a prime, and the Chakravala method for solving the Pell\nequation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
          (hsPkgs."opentheory-bits" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-bits"))
          (hsPkgs."opentheory-divides" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-divides"))
          ];
        buildable = true;
        };
      exes = {
        "arithmetic" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
            (hsPkgs."opentheory-bits" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-bits"))
            (hsPkgs."opentheory-divides" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-divides"))
            ];
          buildable = true;
          };
        };
      tests = {
        "arithmetic-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
            (hsPkgs."opentheory-bits" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-bits"))
            (hsPkgs."opentheory-divides" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-divides"))
            (hsPkgs."opentheory-prime" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-prime"))
            ];
          buildable = true;
          };
        };
      };
    }