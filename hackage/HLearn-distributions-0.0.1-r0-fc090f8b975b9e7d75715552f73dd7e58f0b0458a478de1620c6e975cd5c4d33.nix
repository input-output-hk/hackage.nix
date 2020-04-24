{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HLearn-distributions"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "Distributions for use with the HLearn library";
      description = "This module is used to estimate statistical distributions from data.  The focus is a clean interface inspired by algebra.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HLearn-algebra" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-algebra"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."list-extras" or ((hsPkgs.pkgs-errors).buildDepError "list-extras"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or ((hsPkgs.pkgs-errors).buildDepError "vector-th-unbox"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."logfloat" or ((hsPkgs.pkgs-errors).buildDepError "logfloat"))
          (hsPkgs."math-functions" or ((hsPkgs.pkgs-errors).buildDepError "math-functions"))
          (hsPkgs."normaldistribution" or ((hsPkgs.pkgs-errors).buildDepError "normaldistribution"))
          ];
        buildable = true;
        };
      exes = {
        "HLearn-Distributions-Criterion" = {
          depends = [
            (hsPkgs."HLearn-algebra" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-algebra"))
            (hsPkgs."ConstraintKinds" or ((hsPkgs.pkgs-errors).buildDepError "ConstraintKinds"))
            (hsPkgs."HLearn-distributions" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-distributions"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            ];
          buildable = true;
          };
        "HLearn-Distributions-SpaceTests" = {
          depends = [
            (hsPkgs."HLearn-algebra" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-algebra"))
            (hsPkgs."ConstraintKinds" or ((hsPkgs.pkgs-errors).buildDepError "ConstraintKinds"))
            (hsPkgs."HLearn-distributions" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-distributions"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."logfloat" or ((hsPkgs.pkgs-errors).buildDepError "logfloat"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            ];
          buildable = true;
          };
        };
      };
    }