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
      identifier = { name = "falling-turnip"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ma.ngoc.tran@gmail.com";
      author = "Tran Ma";
      homepage = "http://github.com/tranma/falling-turnip";
      url = "";
      synopsis = "Falling sand game/cellular automata simulation using regular parallel arrays.";
      description = "Falling Turnip is an interactive particle simulation. Like others in the same genre (typically dubbed \"falling sand games\"), it has some degree of approximation for gravity, fluid flow and alchemical reactions. Unlike the others, it is based entirely on cellular automata and runs in parallel.\n\nA short demo video is available here:\n\nhttp://youtu.be/hlL9yi2hGx0\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "falling-turnip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-raster" or (errorHandler.buildDepError "gloss-raster"))
            (hsPkgs."JuicyPixels-repa" or (errorHandler.buildDepError "JuicyPixels-repa"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."repa-algorithms" or (errorHandler.buildDepError "repa-algorithms"))
          ];
          buildable = true;
        };
      };
    };
  }