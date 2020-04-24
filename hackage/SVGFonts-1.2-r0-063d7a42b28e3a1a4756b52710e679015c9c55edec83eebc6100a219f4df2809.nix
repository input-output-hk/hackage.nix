{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SVGFonts"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Fonts from the SVG-Font format";
      description = "Native font support for the Diagrams library. The SVG-Font format is easy to parse\nand was therefore chosen for a font library completely written in Haskell.\n\nYou can convert your own font to SVG with <http://fontforge.sourceforge.net/> or use the included LinLibertine, Bitstream\n\nFeatures\n\n* Complete implementation of the features that Fontforge produces (but not the complete SVG format)\n\n* Kerning (i.e. the two characters in \\\"VA\\\" have a shorter distance than in \\\"VV\\\")\n\n* Unicode\n\n* Ligatures\n\n* An example that shows how to do text boxes with syntax highlighting using highlighting-kate from hackage\n\nXML speed issues can be solved by trimming the svg file to only those characters that are used (or maybe binary xml one day).\n\nVersion 1.0 of this library supports texturing which would only make sense in a Diagrams Backend that does rasterization in Haskell.\n\nExample:\n\n>  # LANGUAGE NoMonomorphismRestriction #\n>\n> import Diagrams.Prelude\n> import Diagrams.Backend.Cairo.CmdLine\n> import Graphics.SVGFonts.ReadFont (textSVG)\n>\n>\n> main = defaultMain ( (text' \"Hello World\") <> (rect 8 1) # alignBL )\n>\n> text'   t = stroke (textSVG t 1) # fc purple # fillRule EvenOdd\n> text''  t = stroke (textSVG' \$ TextOpts t lin INSIDE_H KERN False 1 1 ) # fillRule EvenOdd\n> text''' t =        (textSVG_ \$ TextOpts t lin INSIDE_H KERN True  1 1 ) # fillRule EvenOdd\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }