{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HLearn-approximation"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Approximation algorithms for NP-hard problems";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HLearn-algebra" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-algebra"))
          (hsPkgs."HLearn-distributions" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-distributions"))
          (hsPkgs."HLearn-datastructures" or ((hsPkgs.pkgs-errors).buildDepError "HLearn-datastructures"))
          (hsPkgs."ConstraintKinds" or ((hsPkgs.pkgs-errors).buildDepError "ConstraintKinds"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."list-extras" or ((hsPkgs.pkgs-errors).buildDepError "list-extras"))
          (hsPkgs."heap" or ((hsPkgs.pkgs-errors).buildDepError "heap"))
          ];
        buildable = true;
        };
      };
    }