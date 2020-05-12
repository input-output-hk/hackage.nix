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
      identifier = { name = "haskgame"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Eyal Lotem";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "http://haskell.org/haskellwiki/HaskGame";
      url = "";
      synopsis = "Haskell game library.";
      description = "HaskGame is meant to provide a video/audio/event handling library\nsuitable for creating games or GUI's.\nCurrently it incompletely wraps the SDL so the SDL must be used.\nIn the future, it will abstract SDL completely and perhaps will also\nhave GLUT/OpenGL or X backends.\n\nProject wiki page: <http://haskell.org/haskellwiki/HaskGame>\n\nGit repository is at: <http://github.com/Peaker/haskgame>\n\n&#169; 2009 by Eyal Lotem; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
          ];
        buildable = true;
        };
      };
    }