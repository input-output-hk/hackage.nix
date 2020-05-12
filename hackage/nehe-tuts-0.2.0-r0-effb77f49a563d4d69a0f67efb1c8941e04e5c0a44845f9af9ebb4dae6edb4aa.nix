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
      specVersion = "1.8";
      identifier = { name = "nehe-tuts"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dagitj@gmail.com";
      author = "Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "Port of the NeHe OpenGL tutorials to Haskell.";
      description = "Port of the NeHe OpenGL tutorials to Haskell; so far only lessons 1-12 have been ported.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lesson01" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        "lesson02" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        "lesson03" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        "lesson04" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        "lesson05" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        "lesson06" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "lesson07" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "lesson08" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "lesson09" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "lesson10" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "lesson11" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "lesson12" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (errorHandler.buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }