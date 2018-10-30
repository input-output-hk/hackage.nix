{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "SVGFonts";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "";
      description = "parse svg-font files and generate outlines of letters and sentences";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Fonts" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
            (hsPkgs.xml)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }