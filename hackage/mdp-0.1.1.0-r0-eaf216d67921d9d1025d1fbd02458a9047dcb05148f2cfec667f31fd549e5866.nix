{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "mdp"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "prs233@cornell.edu\ncopyright:          Copyright (c) 2015-2016 Patrick Steele";
      author = "Patrick Steele";
      homepage = "";
      url = "";
      synopsis = "Tools for solving Markov Decision Processes.";
      description = "A library for formulating and solving Markov decision problems.\nWe currently only solve infinite horizon problems. We handle\ndiscounted and undiscounted problems, and can solve continuous- and\ndiscrete-time problems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "ex-3-1" = {
          depends = [
            (hsPkgs."mdp" or ((hsPkgs.pkgs-errors).buildDepError "mdp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "ex-3-1-relative" = {
          depends = [
            (hsPkgs."mdp" or ((hsPkgs.pkgs-errors).buildDepError "mdp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "ex-3-2" = {
          depends = [
            (hsPkgs."mdp" or ((hsPkgs.pkgs-errors).buildDepError "mdp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "mm1" = {
          depends = [
            (hsPkgs."mdp" or ((hsPkgs.pkgs-errors).buildDepError "mdp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "TestMain" = {
          depends = [
            (hsPkgs."mdp" or ((hsPkgs.pkgs-errors).buildDepError "mdp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }