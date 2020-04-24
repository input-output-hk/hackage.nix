{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "DCFL"; version = "0.1.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dpandya@college.harvard.edu";
      author = "Dhaivat Pandya";
      homepage = "https://github.com/Poincare/DCFL";
      url = "";
      synopsis = "Communication Free Learning-based constraint solver";
      description = "An implementation of Communication Free Learning, a technique used to solve Constraint Satisfcation Problems (CSPs) in a parallelizable manner. The algorithm is described in the paper Decentralized Constraint Satisfaction by Duffy, et. al. and this implementation provides both parallel and serial solvers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }