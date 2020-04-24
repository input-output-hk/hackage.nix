{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "Ritt-Wu"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Jose Seraquive";
      maintainer = "jose.seraquive@gmail.com";
      author = "Jose Luis Seraquive Cuenca";
      homepage = "https://github.com/githubuser/Ritt-Wu#readme";
      url = "";
      synopsis = "Parallel implementation of Ritt-Wu's algorithm.";
      description = "Please see the README on GitHub at <https://github.com/xxAVOGADROxx/Ritt-Wu/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."algebra" or ((hsPkgs.pkgs-errors).buildDepError "algebra"))
          (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."massiv" or ((hsPkgs.pkgs-errors).buildDepError "massiv"))
          (hsPkgs."scheduler" or ((hsPkgs.pkgs-errors).buildDepError "scheduler"))
          (hsPkgs."sscript" or ((hsPkgs.pkgs-errors).buildDepError "sscript"))
          ];
        buildable = true;
        };
      exes = {
        "Ritt-Wu-exe" = {
          depends = [
            (hsPkgs."Ritt-Wu" or ((hsPkgs.pkgs-errors).buildDepError "Ritt-Wu"))
            (hsPkgs."algebra" or ((hsPkgs.pkgs-errors).buildDepError "algebra"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."massiv" or ((hsPkgs.pkgs-errors).buildDepError "massiv"))
            (hsPkgs."scheduler" or ((hsPkgs.pkgs-errors).buildDepError "scheduler"))
            (hsPkgs."sscript" or ((hsPkgs.pkgs-errors).buildDepError "sscript"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Ritt-Wu-test" = {
          depends = [
            (hsPkgs."Ritt-Wu" or ((hsPkgs.pkgs-errors).buildDepError "Ritt-Wu"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."scheduler" or ((hsPkgs.pkgs-errors).buildDepError "scheduler"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "Ritt-Wu-benchmark" = {
          depends = [
            (hsPkgs."Ritt-Wu" or ((hsPkgs.pkgs-errors).buildDepError "Ritt-Wu"))
            (hsPkgs."algebra" or ((hsPkgs.pkgs-errors).buildDepError "algebra"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."massiv" or ((hsPkgs.pkgs-errors).buildDepError "massiv"))
            (hsPkgs."scheduler" or ((hsPkgs.pkgs-errors).buildDepError "scheduler"))
            (hsPkgs."sscript" or ((hsPkgs.pkgs-errors).buildDepError "sscript"))
            ];
          buildable = true;
          };
        };
      };
    }