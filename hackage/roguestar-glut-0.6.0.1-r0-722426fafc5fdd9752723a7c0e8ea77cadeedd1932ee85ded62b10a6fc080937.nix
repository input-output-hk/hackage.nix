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
      identifier = { name = "roguestar-glut"; version = "0.6.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson <lane@downstairspeople.org>";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike game.  GLUT front-end.";
      description = "Requires roguestar and roguestar-engine.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "roguestar-glut" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."roguestar-gl" or (errorHandler.buildDepError "roguestar-gl"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."rsagl" or (errorHandler.buildDepError "rsagl"))
          ];
          buildable = true;
        };
      };
    };
  }