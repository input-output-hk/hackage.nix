{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "handa-opengl"; version = "0.1.13.1"; };
      license = "MIT";
      copyright = "(c) 2015 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/handa-opengl";
      url = "https://bitbucket.org/functionally/handa-opengl/downloads/handa-opengl-0.1.13.1.tar.gz";
      synopsis = "Utility functions for OpenGL and GLUT";
      description = "This is a collection of miscellaneous utility functions for OpenGL and GLUT.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.data-default)
          (hsPkgs.GLUT)
          (hsPkgs.opengl-dlp-stereo)
          (hsPkgs.OpenGL)
          (hsPkgs.split)
          (hsPkgs.vector-space)
          ];
        };
      };
    }