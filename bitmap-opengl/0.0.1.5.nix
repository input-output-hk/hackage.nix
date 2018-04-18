{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      opengl29 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bitmap-opengl";
          version = "0.0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2011 Balazs Komuves";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "http://code.haskell.org/~bkomuves/";
        url = "";
        synopsis = "OpenGL support for Data.Bitmap.";
        description = "OpenGL support for Data.Bitmap. It has its own package so that\nthe bitmap package does not depend on OpenGL.";
        buildType = "Simple";
      };
      components = {
        bitmap-opengl = {
          depends  = [
            hsPkgs.base
            hsPkgs.bitmap
          ] ++ [ hsPkgs.OpenGL ];
        };
      };
    }