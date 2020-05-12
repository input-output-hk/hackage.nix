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
      identifier = { name = "SVGFonts"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tillk.vogt@googlemail.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Fonts from the SVG-Font format";
      description = "This format is easy to parse and was therefore chosen for a font library\ncompletely written in Haskell\n\nYou can convert your own font to SVG with <http://fontforge.sourceforge.net/> or use the included LinLibertine, Bitstream\n\nFeatures\n\n* A powerful functional interface, demonstrated with an example (Fonts.hs)\n\n* The generated outlines can be transformed in various ways, i.e.\nelimination of holes for triangulation, representation with triangles, extrusion\n\n* Color textures that are stored as files (font cache). Foreground and background color can be freely chosen.\n\n* Everything is stored in a simple SceneGraph: <http://hackage.haskell.org/package/collada-types>\n\n* Complete implementation of the features that fontforge produces (but not the complete SVG format):\n\n* Kerning (i.e. the two characters in \\\"VA\\\" have a shorter distance than in \\\"VV\\\")\n\n* Unicode, Ligatures\n\nXML speed issues can be solved by trimming the svg file to only those characters that are used (or maybe binary xml one day)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec-text" or (errorHandler.buildDepError "attoparsec-text"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."collada-types" or (errorHandler.buildDepError "collada-types"))
          (hsPkgs."collada-output" or (errorHandler.buildDepError "collada-output"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."SVGPath" or (errorHandler.buildDepError "SVGPath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tga" or (errorHandler.buildDepError "tga"))
          (hsPkgs."triangulation" or (errorHandler.buildDepError "triangulation"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      exes = { "Fonts" = { buildable = true; }; };
      };
    }