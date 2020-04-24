{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "goal-simulation"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sokolo@mis.mpg.de";
      author = "Sacha Sokoloski";
      homepage = "";
      url = "";
      synopsis = "Mealy based simulation tools";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
          (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
          (hsPkgs."goal-probability" or ((hsPkgs.pkgs-errors).buildDepError "goal-probability"))
          (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          ];
        buildable = true;
        };
      exes = {
        "rk4" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
            (hsPkgs."goal-simulation" or ((hsPkgs.pkgs-errors).buildDepError "goal-simulation"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "markov-chain" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or ((hsPkgs.pkgs-errors).buildDepError "goal-probability"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."goal-simulation" or ((hsPkgs.pkgs-errors).buildDepError "goal-simulation"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        "ito-process" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or ((hsPkgs.pkgs-errors).buildDepError "goal-probability"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."goal-simulation" or ((hsPkgs.pkgs-errors).buildDepError "goal-simulation"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        "pendulum-vector-field" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or ((hsPkgs.pkgs-errors).buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or ((hsPkgs.pkgs-errors).buildDepError "goal-simulation"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "pendulum-simulation" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or ((hsPkgs.pkgs-errors).buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or ((hsPkgs.pkgs-errors).buildDepError "goal-simulation"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "pendulum-filter-histogram" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or ((hsPkgs.pkgs-errors).buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or ((hsPkgs.pkgs-errors).buildDepError "goal-simulation"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        "pendulum-filter-simulation" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or ((hsPkgs.pkgs-errors).buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or ((hsPkgs.pkgs-errors).buildDepError "goal-simulation"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        "pendulum-filter-train" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or ((hsPkgs.pkgs-errors).buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or ((hsPkgs.pkgs-errors).buildDepError "goal-simulation"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        "pendulum-filter-code" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."goal-core" or ((hsPkgs.pkgs-errors).buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or ((hsPkgs.pkgs-errors).buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or ((hsPkgs.pkgs-errors).buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or ((hsPkgs.pkgs-errors).buildDepError "goal-simulation"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }