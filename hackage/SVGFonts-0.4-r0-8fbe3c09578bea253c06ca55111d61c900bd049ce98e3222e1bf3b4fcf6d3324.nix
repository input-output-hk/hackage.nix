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
      identifier = { name = "SVGFonts"; version = "0.4"; };
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
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."SVGPath" or (errorHandler.buildDepError "SVGPath"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tga" or (errorHandler.buildDepError "tga"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."collada-types" or (errorHandler.buildDepError "collada-types"))
          (hsPkgs."collada-output" or (errorHandler.buildDepError "collada-output"))
          (hsPkgs."triangulation" or (errorHandler.buildDepError "triangulation"))
          ];
        buildable = true;
        };
      exes = { "Fonts" = { buildable = true; }; };
      };
    }