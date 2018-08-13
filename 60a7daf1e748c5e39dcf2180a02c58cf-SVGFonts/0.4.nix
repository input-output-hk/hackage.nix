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
      specVersion = "1.6";
      identifier = {
        name = "SVGFonts";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Fonts from the SVG-Font format";
      description = "SVG-Font is a very easy to parse format and was therefore chosen for a font library\ncompletely written in Haskell\n\nTo use this library with your own font, the font has to be converted with <http://fontforge.sourceforge.net/>\nFeatures\n\n* A very easy and powerful functional interface, see the Font.hs example\n\n* The generated outlines can be transformed in various ways, i.e.\nelimination of holes for easy extrusion (with the triangulation library)\n\n* complete implementation of the SVG-Font format, that allows Kerning\n(i.e. the two characters in \"VA\" have a shorter distance than in \"VV\")\n\n* Everything is stored in a simple SceneGraph data type: <http://hackage.haskell.org/package/collada-types>\n\n\nSome speed issues are left to be solved (xml) and rasterization is not finnished\n\nSpeed issues can be solved by trimming the svg file to only those characters that are used\n";
      buildType = "Simple";
    };
    components = {
      "SVGFonts" = {
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
          (hsPkgs.collada-types)
          (hsPkgs.collada-output)
          (hsPkgs.triangulation)
        ];
      };
      exes = { "Fonts" = {}; };
    };
  }