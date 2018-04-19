{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "OpenVGRaw";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Raw binding to OpenVG (ShivaVG-0.2.1 implementation).";
        description = "A raw Haskell binding to OpenVG vector graphics API version\n1.0.1, specifically the ShivaVG-0.2.1 implementation.\n\nFollowing Sven Panne\\'s OpenGL model this is essentially a 1:1\nmapping between the OpenVG C API and Haskell.\n\n\nChangelog\n0.1.0 to 0.2.0\n\n* Changed type of vgGetMatrix\n";
        buildType = "Simple";
      };
      components = {
        OpenVGRaw = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGLRaw
          ];
        };
      };
    }