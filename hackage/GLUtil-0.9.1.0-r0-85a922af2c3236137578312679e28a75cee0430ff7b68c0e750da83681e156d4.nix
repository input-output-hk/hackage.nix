{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "GLUtil";
        version = "0.9.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012,2013 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Miscellaneous OpenGL utilities.";
      description = "Helpers for working with shaders, buffer objects, and\ntextures in OpenGL.";
      buildType = "Simple";
    };
    components = {
      "GLUtil" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.linear)
          (hsPkgs.JuicyPixels)
          (hsPkgs.OpenGLRaw)
          (hsPkgs.OpenGL)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.10.1") (hsPkgs.hpp);
        build-tools = pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10.1")) (hsPkgs.buildPackages.cpphs);
      };
    };
  }