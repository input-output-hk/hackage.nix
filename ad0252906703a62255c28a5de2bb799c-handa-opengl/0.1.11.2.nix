{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "handa-opengl";
          version = "0.1.11.2";
        };
        license = "MIT";
        copyright = "(c) 2015 Brian W Bush";
        maintainer = "Brian W Bush <consult@brianwbush.info>";
        author = "Brian W Bush <consult@brianwbush.info>";
        homepage = "https://bitbucket.org/bwbush/handa-opengl";
        url = "https://bitbucket.org/bwbush/handa-opengl/downloads/handa-opengl-0.1.11.2.tar.gz";
        synopsis = "Utility functions for OpenGL and GLUT";
        description = "This is a collection of miscellaneous utility functions for OpenGL and GLUT.";
        buildType = "Simple";
      };
      components = {
        "handa-opengl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.data-default
            hsPkgs.GLUT
            hsPkgs.opengl-dlp-stereo
            hsPkgs.OpenGL
            hsPkgs.vector-space
          ];
        };
      };
    }