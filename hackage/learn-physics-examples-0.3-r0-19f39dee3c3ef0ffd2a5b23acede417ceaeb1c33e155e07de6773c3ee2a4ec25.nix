{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "learn-physics-examples"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott N. Walck <walck@lvc.edu>";
      author = "Scott N. Walck";
      homepage = "";
      url = "";
      synopsis = "examples for learn-physics";
      description = "Executables that use the learn-physics library.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "learn-physics-PlaneWave" = {
          depends = [
            (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."learn-physics" or ((hsPkgs.pkgs-errors).buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-eFieldLine3D" = {
          depends = [
            (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."learn-physics" or ((hsPkgs.pkgs-errors).buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-LorentzForceSimulation" = {
          depends = [
            (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."learn-physics" or ((hsPkgs.pkgs-errors).buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-BCircularLoop" = {
          depends = [
            (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."learn-physics" or ((hsPkgs.pkgs-errors).buildDepError "learn-physics"))
            ];
          buildable = true;
          };
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
        "learn-physics-ElectricFluxPlot" = {
          depends = [
            (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."learn-physics" or ((hsPkgs.pkgs-errors).buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-DampedOscillator" = {
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