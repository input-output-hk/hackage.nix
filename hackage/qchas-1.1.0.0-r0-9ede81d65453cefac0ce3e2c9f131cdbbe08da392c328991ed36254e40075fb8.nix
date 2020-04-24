{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "qchas"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Mihai Sebastian Ardelean";
      maintainer = "ardeleanasm@gmail.com";
      author = "Mihai Sebastian Ardelean";
      homepage = "https://github.com/ardeleanasm/qchas#readme";
      url = "";
      synopsis = "A library for implementing Quantum Algorithms";
      description = "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "qchas-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."qchas" or ((hsPkgs.pkgs-errors).buildDepError "qchas"))
            ];
          buildable = true;
          };
        };
      tests = {
        "qchas-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."qchas" or ((hsPkgs.pkgs-errors).buildDepError "qchas"))
            ];
          buildable = true;
          };
        };
      };
    }