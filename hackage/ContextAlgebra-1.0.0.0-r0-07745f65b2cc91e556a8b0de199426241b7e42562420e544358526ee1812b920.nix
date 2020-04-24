{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ContextAlgebra"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hahn@geoinfo.tuwien.ac.at";
      author = "Jürgen Hahn";
      homepage = "https://github.com/juergenhah/ContextAlgebra";
      url = "";
      synopsis = "Implementation of the context algebra.";
      description = "Implementation of the context algebra published in dissertation: Context Algebra applied to Spatial Concepts";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ContextAlgebra" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            ];
          buildable = true;
          };
        };
      };
    }