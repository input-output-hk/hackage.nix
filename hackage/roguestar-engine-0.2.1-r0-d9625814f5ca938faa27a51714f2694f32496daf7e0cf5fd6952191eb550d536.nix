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
      identifier = { name = "roguestar-engine"; version = "0.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike (turn-based, chessboard-tiled, role playing) game";
      description = "Roguestar is a science fiction themed roguelike (turn-based,\nchessboard-tiled, role playing) game written in Haskell. This package\nprovides the core game engine; you'll probably want to also install the\nOpenGL client.\n\nThis initial release allows you to play one of six alien races.  You begin\nthe game stranded on an alien planet, fighting off an endless hoard of\nhostile robots.\n\nThe Darcs repository is available at <http://www.downstairspeople.org/darcs/roguestar-engine>.";
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
            ];
          buildable = true;
          };
        };
      };
    }