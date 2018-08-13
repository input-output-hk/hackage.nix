{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gloss";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "gloss@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "";
      url = "";
      synopsis = "Painless 2D vector graphics, animations and simulations.";
      description = "Gloss hides the pain of drawing simple vector graphics behind a nice data type and\na few display functions. Gloss uses OpenGL and GLUT under the hood, but you won't\nhave to worry about any of that. Get something cool on the screen in under 10 minutes.";
      buildType = "Simple";
    };
    components = {
      "gloss" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
        ];
      };
    };
  }