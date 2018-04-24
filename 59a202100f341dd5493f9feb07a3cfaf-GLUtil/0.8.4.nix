{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "GLUtil";
          version = "0.8.4";
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
        GLUtil = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.cpphs
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.linear
            hsPkgs.JuicyPixels
            hsPkgs.OpenGLRaw
            hsPkgs.OpenGL
            hsPkgs.transformers
            hsPkgs.vector
          ];
          build-tools = [ hsPkgs.cpphs ];
        };
      };
    }