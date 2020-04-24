{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HLearn-classification"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "";
      description = "This module is for unsupervised, supervised, and semi-supervised classification tasks.  It is in desperate need of documentation and refactoring.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HLearn-algebra" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-algebra"))
          (hsPkgs."HLearn-distributions" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-distributions"))
          (hsPkgs."ConstraintKinds" or ((hsPkgs.pkgs-errors).buildDepError "ConstraintKinds"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."Safe" or ((hsPkgs.pkgs-errors).buildDepError "Safe"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
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
        "HLearn-Classification-Demo" = {
          depends = [
            (hsPkgs."HLearn-algebra" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-algebra"))
            (hsPkgs."ConstraintKinds" or ((hsPkgs.pkgs-errors).buildDepError "ConstraintKinds"))
            (hsPkgs."HLearn-distributions" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-distributions"))
            (hsPkgs."HLearn-classification" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-classification"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }