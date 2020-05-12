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
      identifier = { name = "roguestar-engine"; version = "0.4.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike (turn-based, chessboard-tiled, role playing) game";
      description = "Roguestar is a science fiction themed roguelike (turn-based,\nchessboard-tiled, role playing) game written in Haskell. This package\nprovides the core game engine; you'll probably want to also install the\nOpenGL client.\n\nThe git repository is available at <http://www.downstairspeople.org/git/roguestar-engine.git>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "roguestar-engine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."data-memocombinators" or (errorHandler.buildDepError "data-memocombinators"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."PSQueue" or (errorHandler.buildDepError "PSQueue"))
            (hsPkgs."priority-sync" or (errorHandler.buildDepError "priority-sync"))
            ];
          buildable = true;
          };
        };
      };
    }