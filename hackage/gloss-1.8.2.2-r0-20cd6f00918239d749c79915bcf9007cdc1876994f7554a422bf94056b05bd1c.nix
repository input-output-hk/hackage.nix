{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      glut = true;
      glfw = false;
      explicitbackend = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gloss";
        version = "1.8.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://gloss.ouroborus.net";
      url = "";
      synopsis = "Painless 2D vector graphics, animations and simulations.";
      description = "Gloss hides the pain of drawing simple vector graphics behind a nice data type and\na few display functions. Gloss uses OpenGL under the hood, but you won't need to\nworry about any of that. Get something cool on the screen in under 10 minutes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.bmp)
        ] ++ pkgs.lib.optional (flags.glfw) (hsPkgs.GLFW-b);
      };
    };
  }