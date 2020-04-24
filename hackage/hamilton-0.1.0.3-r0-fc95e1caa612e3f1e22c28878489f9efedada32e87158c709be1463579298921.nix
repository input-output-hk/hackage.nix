{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hamilton"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/hamilton#readme";
      url = "";
      synopsis = "Physics on generalized coordinate systems using Hamiltonian Mechanics and AD";
      description = "See README.md (or read online at <https://github.com/mstksg/hamilton#readme>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-gsl"))
          (hsPkgs."hmatrix-vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-vector-sized"))
          (hsPkgs."typelits-witnesses" or ((hsPkgs.pkgs-errors).buildDepError "typelits-witnesses"))
          (hsPkgs."vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "vector-sized"))
          ];
        buildable = true;
        };
      exes = {
        "hamilton-examples" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."finite-typelits" or ((hsPkgs.pkgs-errors).buildDepError "finite-typelits"))
            (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."hamilton" or ((hsPkgs.pkgs-errors).buildDepError "hamilton"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "vector-sized"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      };
    }