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
      specVersion = "1.2";
      identifier = { name = "wumpus-basic"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Common drawing utilities built on wumpus-core.";
      description = "\nVery preliminary release...\n\nChangelog:\n\n0.1.1 to 0.2.0:\n\n* Added the module @Wumpus.Basic.Graphic@.\n\n* SafeFonts changed to be size neutral. PostScript\\'s\n@scalefont@ command (which wumpus-core uses in the generated\noutput) should be able to scale to any integer size.\n\n* New demo @ColourCharts.hs@.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."wumpus-core" or (errorHandler.buildDepError "wumpus-core"))
        ];
        buildable = true;
      };
    };
  }