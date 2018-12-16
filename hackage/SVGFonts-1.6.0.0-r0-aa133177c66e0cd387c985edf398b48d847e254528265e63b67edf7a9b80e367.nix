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
      specVersion = "1.10";
      identifier = {
        name = "SVGFonts";
        version = "1.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Fonts from the SVG-Font format";
      description = "Native font support for the diagrams framework (<http://projects.haskell.org/diagrams/>). Note that this package can be used with any diagrams backend, not just the SVG backend.  The SVG-font format is easy to parse\nand was therefore chosen for a font library completely written in Haskell.\n\nYou can convert your own font to SVG with <http://fontforge.sourceforge.net/>, or use the included LinLibertine and Bitstream fonts.\n\nFeatures:\n\n* Complete implementation of the features that Fontforge produces (though not the complete SVG format)\n\n* Kerning (/i.e./ the two characters in \\\"VA\\\" are closer than the characters in \\\"VV\\\")\n\n* Unicode\n\n* Ligatures\n\n* An example that shows how to do text boxes with syntax highlighting using highlighting-kate:\n<http://hackage.haskell.org/package/highlighting-kate>\n\nXML speed issues can be solved by trimming the svg file to only those characters that are used (or maybe binary xml one day).\n\nVersion 1.0 of this library supports texturing, though this only makes sense in a diagrams backend that does rasterization in Haskell, such as diagrams-rasterific.\n\nExample:\n\n>  # LANGUAGE NoMonomorphismRestriction #\n>\n> import Diagrams.Prelude\n> import Diagrams.Backend.Rasterific.CmdLine\n> import Graphics.SVGFonts\n>\n> main = defaultMain (text' \"Hello World\")\n>\n> text'   t = stroke (textSVG t 1) # fc purple # fillRule EvenOdd\n> text''  t = stroke (textSVG' (TextOpts lin INSIDE_H KERN False 1 1) t) # fillRule EvenOdd\n> text''' t =        (textSVG_ (TextOpts lin INSIDE_H KERN True  1 1) t) # fillRule EvenOdd\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.directory)
          (hsPkgs.blaze-svg)
          (hsPkgs.blaze-markup)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.tuple)
          (hsPkgs.vector)
          (hsPkgs.xml)
        ];
      };
    };
  }