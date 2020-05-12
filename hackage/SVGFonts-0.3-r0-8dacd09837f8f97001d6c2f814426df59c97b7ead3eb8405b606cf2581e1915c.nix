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
      identifier = { name = "SVGFonts"; version = "0.3"; };
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
          ];
        buildable = true;
        };
      exes = { "Fonts" = { buildable = true; }; };
      };
    }