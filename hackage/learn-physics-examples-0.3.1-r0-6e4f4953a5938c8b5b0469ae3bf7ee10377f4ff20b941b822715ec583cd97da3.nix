{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "learn-physics-examples"; version = "0.3.1"; };
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
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-eFieldLine3D" = {
          depends = [
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-LorentzForceSimulation" = {
          depends = [
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-BCircularLoop" = {
          depends = [
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-sunEarth" = {
          depends = [
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-eFieldLine2D" = {
          depends = [
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-ElectricFluxPlot" = {
          depends = [
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-DampedOscillator" = {
          depends = [
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        };
      };
    }