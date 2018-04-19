{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gloss-rendering";
          version = "1.9.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "elise@jabberwocky.eu benl@ouroborus.net";
        author = "Elise Huard";
        homepage = "";
        url = "";
        synopsis = "Gloss Picture data type and rendering functions.";
        description = "Gloss Picture data type and rendering functions.";
        buildType = "Simple";
      };
      components = {
        gloss-rendering = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.OpenGL
            hsPkgs.GLUT
            hsPkgs.bmp
          ];
        };
      };
    }