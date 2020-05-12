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
      identifier = { name = "roguestar-engine"; version = "0.6.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike game.  Backend.";
      description = "Requires roguestar and roguestar-glut.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "roguestar-engine" = {
          depends = [
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."priority-sync" or (errorHandler.buildDepError "priority-sync"))
            (hsPkgs."PSQueue" or (errorHandler.buildDepError "PSQueue"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."data-memocombinators" or (errorHandler.buildDepError "data-memocombinators"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }