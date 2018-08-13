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
      specVersion = "1.10";
      identifier = {
        name = "gloss-rendering";
        version = "1.12.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "elise@jabberwocky.eu benl@ouroborus.net";
      author = "Elise Huard";
      homepage = "";
      url = "";
      synopsis = "Gloss picture data types and rendering functions.";
      description = "Gloss picture data types and rendering functions. These functions\ndon't do any window management. If you want gloss to setup your window as\nwell then use the plain @gloss@ package.";
      buildType = "Simple";
    };
    components = {
      "gloss-rendering" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bmp)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.GLUT)
          (hsPkgs.OpenGL)
        ];
      };
    };
  }