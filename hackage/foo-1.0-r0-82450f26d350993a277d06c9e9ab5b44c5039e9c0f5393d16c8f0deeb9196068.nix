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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "foo"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "none";
      author = "Bartosz Wójcik";
      homepage = "http://sourceforge.net/projects/fooengine/?abmode=1";
      url = "";
      synopsis = "Paper soccer, an OpenGL game.";
      description = "Foo (abbreviation from football) is a playing machine of Paper Soccer, a\npencil and paper game for two players, described in WIKIPEDIA. Written\nin Haskell, contains also simply interface using HOpenGL library.\nProvides bunch of playing algorithms.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "foo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }