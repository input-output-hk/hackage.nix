{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "SVGFonts";
          version = "1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Tillmann Vogt";
        homepage = "";
        url = "";
        synopsis = "Fonts from the SVG-Font format";
        description = "Native font support for the Diagrams library. The SVG-Font format is easy to parse\nand was therefore chosen for a font library completely written in Haskell.\n\nYou can convert your own font to SVG with <http://fontforge.sourceforge.net/> or use the included LinLibertine, Bitstream\n\nFeatures\n\n* Complete implementation of the features that Fontforge produces (but not the complete SVG format)\n\n* Kerning (i.e. the two characters in \\\"VA\\\" have a shorter distance than in \\\"VV\\\")\n\n* Unicode\n\n* Ligatures\n\nXML speed issues can be solved by trimming the svg file to only those characters that are used (or maybe binary xml one day).\n\nVersion 1.0 of this library supports texturing which would only make sense in a Diagrams Backend that does rasterization in Haskell.\n\nExample:\n\n>  # LANGUAGE NoMonomorphismRestriction #\n>\n> import Diagrams.Prelude\n> import Diagrams.Backend.Cairo.CmdLine\n> import Graphics.SVGFonts.ReadFont (textSVG)\n>\n>\n> main = defaultMain ( (text' \"Hello World\") <> (rect 8 1) # alignBL )\n>\n> text'  t = stroke (textSVG t 1) # fc purple # fillRule EvenOdd\n> text'' t = stroke (textSVG_ \$ TextOpts t lin INSIDE_H KERN 1 1 ) # fc purple # fillRule EvenOdd\n";
        buildType = "Simple";
      };
      components = {
        SVGFonts = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.diagrams-lib
            hsPkgs.directory
            hsPkgs.parsec
            hsPkgs.split
            hsPkgs.text
            hsPkgs.tuple
            hsPkgs.vector
            hsPkgs.vector-space
            hsPkgs.xml
          ];
        };
      };
    }