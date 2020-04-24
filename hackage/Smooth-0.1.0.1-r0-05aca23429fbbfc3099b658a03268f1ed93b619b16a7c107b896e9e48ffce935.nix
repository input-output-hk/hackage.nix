{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Smooth"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dillonhuff@gmail.com";
      author = "Dillon Huff";
      homepage = "";
      url = "";
      synopsis = "A tiny, lazy SMT solver";
      description = "A tiny, lazy SMT solver. This solver is based on algorithms\ndescribed in 'Decision Procedures: An Algorithmic Point of View'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."FirstOrderTheory" or ((hsPkgs.pkgs-errors).buildDepError "FirstOrderTheory"))
          (hsPkgs."Proper" or ((hsPkgs.pkgs-errors).buildDepError "Proper"))
          (hsPkgs."DifferenceLogic" or ((hsPkgs.pkgs-errors).buildDepError "DifferenceLogic"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }