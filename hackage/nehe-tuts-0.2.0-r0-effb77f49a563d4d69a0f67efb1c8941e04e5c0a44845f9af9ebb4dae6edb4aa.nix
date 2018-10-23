{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "nehe-tuts";
        version = "0.2.0";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
          ];
        };
        "lesson02" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
          ];
        };
        "lesson03" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
          ];
        };
        "lesson04" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
          ];
        };
        "lesson05" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
          ];
        };
        "lesson06" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.directory)
          ];
        };
        "lesson07" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.directory)
          ];
        };
        "lesson08" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.directory)
          ];
        };
        "lesson09" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.random)
            (hsPkgs.directory)
          ];
        };
        "lesson10" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.directory)
          ];
        };
        "lesson11" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.array)
            (hsPkgs.directory)
          ];
        };
        "lesson12" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLURaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }