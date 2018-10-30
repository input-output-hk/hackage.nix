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
      specVersion = "1.6";
      identifier = {
        name = "SVGFonts";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Fonts from the SVG-Font format";
      description = "Parse SVG-Font files and generate outlines or textures or texture files from text strings.\nThis library uses algorithms similar to Freetype and therefore needs no binding.\nUnfortunately some speed issues (xml, rasterization) and bugs (triangulation,rasterization) make an actual usage problematic, but they will be solved.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.xml)
          (hsPkgs.parsec)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.SVGPath)
          (hsPkgs.split)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.tga)
          (hsPkgs.tuple)
        ];
      };
      exes = { "Fonts" = {}; };
    };
  }