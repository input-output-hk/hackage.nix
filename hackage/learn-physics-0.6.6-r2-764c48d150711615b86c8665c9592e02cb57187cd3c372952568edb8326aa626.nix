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
      specVersion = "1.10";
      identifier = { name = "learn-physics"; version = "0.6.6"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."Vis" or (errorHandler.buildDepError "Vis"))
          (hsPkgs."SpatialMath" or (errorHandler.buildDepError "SpatialMath"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ];
        buildable = true;
      };
      exes = {
        "learn-physics-PlaneWave" = {
          depends = [
            (hsPkgs."Vis" or (errorHandler.buildDepError "Vis"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
          ];
          buildable = true;
        };
        "learn-physics-eFieldLine3D" = {
          depends = [
            (hsPkgs."Vis" or (errorHandler.buildDepError "Vis"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
          ];
          buildable = true;
        };
        "learn-physics-LorentzForceSimulation" = {
          depends = [
            (hsPkgs."Vis" or (errorHandler.buildDepError "Vis"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SpatialMath" or (errorHandler.buildDepError "SpatialMath"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
          ];
          buildable = true;
        };
        "learn-physics-BCircularLoop" = {
          depends = [
            (hsPkgs."Vis" or (errorHandler.buildDepError "Vis"))
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
        "learn-physics-NMR" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."learn-physics" or (errorHandler.buildDepError "learn-physics"))
          ];
          buildable = true;
        };
      };
    };
  }