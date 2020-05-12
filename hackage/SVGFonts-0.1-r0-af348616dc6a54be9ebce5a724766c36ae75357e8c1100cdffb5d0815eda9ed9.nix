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
      specVersion = "1.2";
      identifier = { name = "SVGFonts"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "";
      description = "parse svg-font files and generate outlines of letters and sentences";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Fonts" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }