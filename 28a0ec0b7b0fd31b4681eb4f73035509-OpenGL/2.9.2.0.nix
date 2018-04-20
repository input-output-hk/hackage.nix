{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "OpenGL";
          version = "2.9.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sven Panne <svenpanne@gmail.com>, Jason Dagit <dagitj@gmail.com>";
        author = "";
        homepage = "http://www.haskell.org/haskellwiki/Opengl";
        url = "";
        synopsis = "A binding for the OpenGL graphics system";
        description = "A Haskell binding for the OpenGL graphics system (GL, version 4.4) and its\naccompanying utility library (GLU, version 1.3).\n\nOpenGL is the industry's most widely used and supported 2D and 3D graphics\napplication programming interface (API), incorporating a broad set of\nrendering, texture mapping, special effects, and other powerful visualization\nfunctions. For more information about OpenGL and its various extensions,\nplease see <http://www.opengl.org/>\nand <http://www.opengl.org/registry/>.";
        buildType = "Simple";
      };
      components = {
        OpenGL = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.OpenGLRaw
            hsPkgs.GLURaw
          ];
        };
      };
    }