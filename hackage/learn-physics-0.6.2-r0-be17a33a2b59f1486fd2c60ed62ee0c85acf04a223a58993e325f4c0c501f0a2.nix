{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "learn-physics"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott N. Walck <walck@lvc.edu>";
      author = "Scott N. Walck";
      homepage = "";
      url = "";
      synopsis = "Haskell code for learning physics";
      description = "A library of functions for vector calculus,\ncalculation of electric field, electric flux,\nmagnetic field, and other quantities in classical mechanics,\nelectromagnetic theory, and quantum mechanics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
          ];
        buildable = true;
        };
      exes = {
        "learn-physics-sunEarth" = {
          depends = [
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."learn-physics" or ((hsPkgs.pkgs-errors).buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-eFieldLine2D" = {
          depends = [
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."learn-physics" or ((hsPkgs.pkgs-errors).buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-Projectile" = {
          depends = [
            (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."learn-physics" or ((hsPkgs.pkgs-errors).buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        };
      };
    }