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
      identifier = { name = "pvd"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Rickard Nilsson";
      maintainer = "rickard.nilsson@telia.com";
      author = "Rickard Nilsson";
      homepage = "http://code.haskell.org/pvd";
      url = "";
      synopsis = "A photo viewer daemon application with remote controlling abilities.";
      description = "pvd, Photo Viewer Daemon, is an image viewer application that displays a fullscreen X11 window and listens for remote commands over TCP. The project also includes pvc, a simple command line client application you can use to control pvd. pvc has commands for setting the current photo playlist, jumping between photos, etc. pvd implements caching in the background which makes it possible to quickly switch between photos even if the files are fetched over network or if pvd runs on a slow computer. pvd uses the DevIL image library for loading photo files, which supports a large number of image formats.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pvd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."Codec-Image-DevIL" or (errorHandler.buildDepError "Codec-Image-DevIL"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          libs = [
            (pkgs."IL" or (errorHandler.sysDepError "IL"))
            (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
          buildable = true;
        };
        "pvc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }