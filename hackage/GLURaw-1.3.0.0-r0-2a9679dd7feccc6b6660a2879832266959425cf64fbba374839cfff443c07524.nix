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
    flags = { usenativewindowslibraries = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "GLURaw"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jason Dagit <dagitj@gmail.com>, Sven Panne <sven.panne@aedion.de>";
      author = "";
      homepage = "http://www.haskell.org/haskellwiki/Opengl";
      url = "";
      synopsis = "A raw binding for the OpenGL graphics system";
      description = "GLURaw is a raw Haskell binding for the GLU 1.3 OpenGL utility library. It is\nbasically a 1:1 mapping of GLU's C API, intended as a basis for a nicer\ninterface.\n\nOpenGL is the industry's most widely used and supported 2D and 3D graphics\napplication programming interface (API), incorporating a broad set of\nrendering, texture mapping, special effects, and other powerful visualization\nfunctions. For more information about OpenGL and its various extensions,\nplease see <http://www.opengl.org/>\nand <http://www.opengl.org/registry/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
        ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."glu32" or (errorHandler.sysDepError "glu32")) ]
          else pkgs.lib.optional (!system.isOsx) (pkgs."GLU" or (errorHandler.sysDepError "GLU"));
        frameworks = pkgs.lib.optionals (!(system.isWindows && flags.usenativewindowslibraries)) (pkgs.lib.optional (system.isOsx) (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL")));
        buildable = true;
      };
    };
  }