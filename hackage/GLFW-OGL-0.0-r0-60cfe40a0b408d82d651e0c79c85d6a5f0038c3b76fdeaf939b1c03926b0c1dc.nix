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
      identifier = { name = "GLFW-OGL"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "";
      homepage = "http://haskell.org/haskellwiki/GLFW-OGL";
      url = "";
      synopsis = "A binding for GLFW (OGL)";
      description = "Provisional port of the GLFW-0.3 package to 'OGL'";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."OGL" or (errorHandler.buildDepError "OGL"))
        ];
        libs = if system.isLinux
          then [
            (pkgs."Xrandr" or (errorHandler.sysDepError "Xrandr"))
            (pkgs."X11" or (errorHandler.sysDepError "X11"))
          ]
          else pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (system.isWindows) (pkgs."opengl32" or (errorHandler.sysDepError "opengl32")));
        frameworks = pkgs.lib.optionals (!system.isLinux) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."AGL" or (errorHandler.sysDepError "AGL"))
          (pkgs."Carbon" or (errorHandler.sysDepError "Carbon"))
          (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL"))
        ]);
        buildable = true;
      };
    };
  }