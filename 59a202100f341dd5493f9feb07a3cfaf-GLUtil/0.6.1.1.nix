{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "GLUtil";
          version = "0.6.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Anthony Cowley";
        maintainer = "acowley@gmail.com";
        author = "Anthony Cowley";
        homepage = "";
        url = "";
        synopsis = "Miscellaneous OpenGL utilities.";
        description = "Helpers for working with shaders, buffer objects, and\ntextures in OpenGL.";
        buildType = "Simple";
      };
      components = {
        GLUtil = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.linear
            hsPkgs.JuicyPixels
            hsPkgs.OpenGLRaw
            hsPkgs.OpenGL
            hsPkgs.vector
          ];
        };
      };
    }