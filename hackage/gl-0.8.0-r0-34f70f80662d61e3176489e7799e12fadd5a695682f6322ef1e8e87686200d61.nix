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
    flags = { usenativewindowslibraries = true; useglxgetprocaddress = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "gl"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2017 Edward A. Kmett,\nCopyright © 2014-2017 Gabríel Arthúr Pétursson,\nCopyright © 2013 Sven Panne";
      maintainer = "ekmett@gmail.com";
      author = "Edward A. Kmett, Gabríel Arthúr Pétursson, Sven Panne";
      homepage = "";
      url = "";
      synopsis = "Complete OpenGL raw bindings";
      description = "Complete OpenGL raw bindings";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.hxt or (pkgs.buildPackages.hxt or (errorHandler.buildToolDepError "hxt")))
        (hsPkgs.buildPackages.transformers or (pkgs.buildPackages.transformers or (errorHandler.buildToolDepError "transformers")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (errorHandler.buildToolDepError "containers")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fixed" or (errorHandler.buildDepError "fixed"))
          (hsPkgs."half" or (errorHandler.buildDepError "half"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."opengl32" or (errorHandler.sysDepError "opengl32")) ]
          else (pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (!system.isIos) (pkgs."GL" or (errorHandler.sysDepError "GL")));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) (if system.isOsx
          then [ (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL")) ]
          else (pkgs.lib).optional (system.isIos) (pkgs."OpenGLES" or (errorHandler.sysDepError "OpenGLES")));
        buildable = true;
        };
      };
    }