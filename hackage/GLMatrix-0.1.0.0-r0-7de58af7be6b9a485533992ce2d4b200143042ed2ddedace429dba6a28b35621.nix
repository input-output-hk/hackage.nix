{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "GLMatrix";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fiendfan1@yahoo.com";
      author = "kig, fiendfan1";
      homepage = "https://github.com/fiendfan1/GLMatrix";
      url = "";
      synopsis = "Utilities for working with OpenGL matrices";
      description = "";
      buildType = "Simple";
    };
    components = {
      "GLMatrix" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGLRaw)
        ];
      };
    };
  }