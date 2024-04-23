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
      specVersion = "1.18";
      identifier = { name = "gl"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014 Edward A. Kmett,\nCopyright © 2014 Gabríel Arthúr Pétursson,\nCopyright © 2013 Sven Panne";
      maintainer = "ekmett@gmail.com";
      author = "Edward A. Kmett, Gabríel Arthúr Pétursson, Sven Panne";
      homepage = "";
      url = "";
      synopsis = "Complete OpenGL raw bindings";
      description = "Complete OpenGL raw bindings";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fixed" or (errorHandler.buildDepError "fixed"))
          (hsPkgs."half" or (errorHandler.buildDepError "half"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."opengl32" or (errorHandler.sysDepError "opengl32")) ]
          else pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (!system.isIos) (pkgs."GL" or (errorHandler.sysDepError "GL")));
        frameworks = pkgs.lib.optionals (!(system.isWindows && flags.usenativewindowslibraries)) (if system.isOsx
          then [ (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL")) ]
          else pkgs.lib.optional (system.isIos) (pkgs."OpenGLES" or (errorHandler.sysDepError "OpenGLES")));
        buildable = true;
      };
    };
  }