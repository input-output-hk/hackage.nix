{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "learn-physics"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott N. Walck <walck@lvc.edu>";
      author = "Scott N. Walck";
      homepage = "";
      url = "";
      synopsis = "Haskell code for learning physics";
      description = "A library of functions for vector calculus,\ncalculation of electric field, electric flux,\nmagnetic field, and other quantities in mechanics\nand electromagnetic theory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
          (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
          (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
          ];
        buildable = true;
        };
      };
    }