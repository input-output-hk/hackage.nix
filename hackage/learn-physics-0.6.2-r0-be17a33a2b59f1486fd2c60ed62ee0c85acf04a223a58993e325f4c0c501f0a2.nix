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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
        ];
        buildable = true;
      };
      exes = {
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