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
      specVersion = "1.8";
      identifier = { name = "learn-physics"; version = "0.5.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
          (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
        ];
        buildable = true;
      };
      exes = {
        "learn-physics-PlaneWave" = {
          depends = [
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
          ];
          buildable = true;
        };
        "learn-physics-eFieldLine3D" = {
          depends = [
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
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
        "learn-physics-Projectile" = {
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