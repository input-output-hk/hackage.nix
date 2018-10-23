{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yampa-glut";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 by Nikolay Orlyuk";
      maintainer = "virkony@gmail.com";
      author = "Nikolay Orlyuk";
      homepage = "https://github.com/ony/yampa-glut";
      url = "";
      synopsis = "Connects Yampa and GLUT";
      description = "This package contains an adapter that connects OpenGL/GLUT to the\nFRP library \\\"Yampa\\\".\n\n&#169; 2012 by Nikolay Orlyuk; GPL-3 license.";
      buildType = "Simple";
    };
    components = {
      "yampa-glut" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.vector-space)
          (hsPkgs.Yampa)
          (hsPkgs.newtype)
        ];
      };
    };
  }