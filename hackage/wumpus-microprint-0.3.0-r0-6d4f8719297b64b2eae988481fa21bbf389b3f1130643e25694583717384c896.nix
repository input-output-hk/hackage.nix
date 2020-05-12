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
      identifier = { name = "wumpus-microprint"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Microprints - \"greek-text\" pictures.";
      description = "\nA library to produce /microprints/ [1] sometimes known as\n\\\"greek-text\\\".\n\nNote this library only provides the graphically half of the\nfunctionality needed to make microprints. There is no support\nfor tokenizing input files, and at the moment it is really\njust a test bed for Wumpus.\n\n\\[1\\] <http://scg.unibe.ch/archive/papers/Robb05b-microprintsESUG.pdf>\n\nChangelog:\n\n0.2.0 to 0.3.0:\n\n* Updated to use ConsDrawing monad from Wumpus-Basic.\n\n0.1.1 to 0.2.0:\n\n* Updated to use Basic.Graphic types from wumpus-basic-0.2.0\n\n* Added bordered printing that marks the unit character width.\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."wumpus-core" or (errorHandler.buildDepError "wumpus-core"))
          (hsPkgs."wumpus-basic" or (errorHandler.buildDepError "wumpus-basic"))
          ];
        buildable = true;
        };
      };
    }