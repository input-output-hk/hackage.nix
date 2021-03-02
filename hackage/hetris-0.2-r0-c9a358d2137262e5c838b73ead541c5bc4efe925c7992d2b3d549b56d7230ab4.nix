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
      specVersion = "1.0";
      identifier = { name = "hetris"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ian Lynagh <igloo@earth.li>";
      author = "Ian Lynagh";
      homepage = "http://web.comlab.ox.ac.uk/oucl/work/ian.lynagh/Hetris/";
      url = "";
      synopsis = "Text Tetris";
      description = "This is a simple reimplementation of Tetris which\nuses the Curses interface to run in a terminal.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hetris" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
            ];
          libs = [ (pkgs."curses" or (errorHandler.sysDepError "curses")) ];
          buildable = true;
          };
        };
      };
    }