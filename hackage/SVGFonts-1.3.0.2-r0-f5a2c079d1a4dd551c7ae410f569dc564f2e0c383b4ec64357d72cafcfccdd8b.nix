{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SVGFonts"; version = "1.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Fonts from the SVG-Font format";
      description = "Native font support for the diagrams framework (<http://projects.haskell.org/diagrams/>). Note that this package can be used with any diagrams backend, not just the SVG backend.  The SVG-tont format is easy to parse\nand was therefore chosen for a font library completely written in Haskell.\n\nYou can convert your own font to SVG with <http://fontforge.sourceforge.net/>, or use the included LinLibertine and Bitstream fonts.\n\nFeatures:\n\n* Complete implementation of the features that Fontforge produces (though not the complete SVG format)\n\n* Kerning (/i.e./ the two characters in \\\"VA\\\" are closer than the characters in \\\"VV\\\")\n\n* Unicode\n\n* Ligatures\n\n* An example that shows how to do text boxes with syntax highlighting using highlighting-kate:\n<http://hackage.haskell.org/package/highlighting-kate>\n\nXML speed issues can be solved by trimming the svg file to only those characters that are used (or maybe binary xml one day).\n\nVersion 1.0 of this library supports texturing, though this would only sense in a diagrams backend that does rasterization in Haskell.\n\nExample:\n\n>  # LANGUAGE NoMonomorphismRestriction #\n>\n> import Diagrams.Prelude\n> import Diagrams.Backend.Cairo.CmdLine\n> import Graphics.SVGFonts.ReadFont (textSVG)\n>\n> main = defaultMain (text' \"Hello World\")\n>\n> text'   t = stroke (textSVG t 1) # fc purple # fillRule EvenOdd\n> text''  t = stroke (textSVG' \$ TextOpts t lin INSIDE_H KERN False 1 1 ) # fillRule EvenOdd\n> text''' t =        (textSVG_ \$ TextOpts t lin INSIDE_H KERN True  1 1 ) # fillRule EvenOdd\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }