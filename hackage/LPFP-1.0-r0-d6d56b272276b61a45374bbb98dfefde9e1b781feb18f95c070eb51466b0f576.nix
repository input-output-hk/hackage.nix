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
      specVersion = "1.12";
      identifier = { name = "LPFP"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Scott N. Walck";
      maintainer = "walck@lvc.edu";
      author = "Scott N. Walck";
      homepage = "https://lpfp.io";
      url = "";
      synopsis = "Code for the book Learn Physics with Functional Programming";
      description = "Haskell code to help the user learn mechanics of one particle,\nmechanics of multiple interacting particles, and electromagnetic theory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
          (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "LPFP-hello" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "LPFP-MakeTrajectoryGraph" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
          ];
          buildable = true;
        };
        "LPFP-GlossDisplay" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-GlossDisplay2" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-GlossAnimate" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-GlossSimulate" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-GlossSimulate2" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-VisDisplay" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
          ];
          buildable = true;
        };
        "LPFP-VisDisplay2" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
          buildable = true;
        };
        "LPFP-VisDisplay3" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
          ];
          buildable = true;
        };
        "LPFP-VisAnimate" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
          ];
          buildable = true;
        };
        "LPFP-VisSimulate" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
          ];
          buildable = true;
        };
        "LPFP-GlossHalley" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-GlossProjectile" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-VisProjectile" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
          ];
          buildable = true;
        };
        "LPFP-Mech3Proton" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-GlossProton" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-VisTwoSprings" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
          ];
          buildable = true;
        };
        "LPFP-GlossBilliard" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-GlossWave" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
        "LPFP-GnuplotWave" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
          ];
          buildable = true;
        };
        "LPFP-GlossBilliardAnimate" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "LPFP-ProtonEB" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
          ];
          buildable = true;
        };
        "LPFP-Hydrogen" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
          ];
          buildable = true;
        };
        "LPFP-ElectricWave" = {
          depends = [
            (hsPkgs."LPFP" or (errorHandler.buildDepError "LPFP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          ];
          buildable = true;
        };
      };
    };
  }