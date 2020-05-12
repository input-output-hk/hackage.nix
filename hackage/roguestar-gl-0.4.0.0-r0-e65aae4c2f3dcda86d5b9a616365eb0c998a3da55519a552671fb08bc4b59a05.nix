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
      specVersion = "0";
      identifier = { name = "roguestar-gl"; version = "0.4.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson <lane@downstairspeople.org>";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike (turn-based, chessboard-tiled, role playing) game";
      description = "Roguestar is a science fiction themed roguelike (turn-based,\nchessboard-tiled, role playing) game written in Haskell.  Roguestar uses\nOpenGL for graphics.  This is still a very early release.\n\nThe git repository is available at <http://www.downstairspeople.org/git/roguestar-gl.git>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "roguestar-gl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rsagl" or (errorHandler.buildDepError "rsagl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."priority-sync" or (errorHandler.buildDepError "priority-sync"))
            ];
          buildable = true;
          };
        "roguestar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rsagl" or (errorHandler.buildDepError "rsagl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."priority-sync" or (errorHandler.buildDepError "priority-sync"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }