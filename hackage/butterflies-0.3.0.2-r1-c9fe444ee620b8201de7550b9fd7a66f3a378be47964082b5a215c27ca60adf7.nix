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
      specVersion = "1.8";
      identifier = { name = "butterflies"; version = "0.3.0.2"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2013,2018  Claude Heiland-Allen <claude@mathr.co.uk>";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/butterflies";
      url = "";
      synopsis = "butterfly tilings";
      description = "various tilings with butterflies (after M C Escher 1950)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "butterflies-flat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."gl-capture" or (errorHandler.buildDepError "gl-capture"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."repa-devil" or (errorHandler.buildDepError "repa-devil"))
            (hsPkgs."butterflies" or (errorHandler.buildDepError "butterflies"))
          ];
          buildable = true;
        };
      };
    };
  }