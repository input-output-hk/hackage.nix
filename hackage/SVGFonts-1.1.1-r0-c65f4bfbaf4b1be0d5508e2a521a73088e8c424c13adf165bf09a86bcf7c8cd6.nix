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
      specVersion = "1.6";
      identifier = { name = "SVGFonts"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tillk.vogt@googlemail.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Fonts from the SVG-Font format";
      description = "Native font support for the diagrams library. The SVG-Font format is easy to parse\nand was therefore chosen for a font library completely written in Haskell.\n\nYou can convert your own font to SVG with <http://fontforge.sourceforge.net/> or use the included LinLibertine, Bitstream\n\nFeatures\n\n* Complete implementation of the features that Fontforge produces (but not the complete SVG format)\n\n* Kerning (i.e. the two characters in \\\"VA\\\" have a shorter distance than in \\\"VV\\\")\n\n* Unicode\n\n* Ligatures\n\nXML speed issues can be solved by trimming the svg file to only those characters that are used (or maybe binary xml one day).\n\nVersion 1.0 of this library supports texturing which would only make sense in a Diagrams Backend that does rasterization in Haskell.\n\nExample:\n\n>  # LANGUAGE NoMonomorphismRestriction #\n>\n> import Diagrams.Prelude\n> import Diagrams.Backend.Cairo.CmdLine\n> import Graphics.SVGFonts.ReadFont (textSVG,textSVG_)\n>\n>\n> main = defaultMain ( (text' \"Hello World\") <> (rect 8 1) # alignBL )\n>\n> text'  t = stroke (textSVG t 1) # fc purple # fillRule EvenOdd\n> text'' t = stroke (textSVG_ $ TextOpts t lin INSIDE_H KERN 1 1 ) # fc purple # fillRule EvenOdd\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec-text" or (errorHandler.buildDepError "attoparsec-text"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
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