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
      specVersion = "1.10";
      identifier = { name = "OpenGL"; version = "2.11.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sven Panne <svenpanne@gmail.com>, Jason Dagit <dagitj@gmail.com>";
      author = "Sven Panne";
      homepage = "http://www.haskell.org/haskellwiki/Opengl";
      url = "";
      synopsis = "A binding for the OpenGL graphics system";
      description = "A Haskell binding for the OpenGL graphics system (GL, version 4.5) and its\naccompanying utility library (GLU, version 1.3).\n\nOpenGL is the industry's most widely used and supported 2D and 3D graphics\napplication programming interface (API), incorporating a broad set of\nrendering, texture mapping, special effects, and other powerful visualization\nfunctions. For more information about OpenGL and its various extensions,\nplease see <http://www.opengl.org/>\nand <http://www.opengl.org/registry/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
          ];
        buildable = true;
        };
      };
    }