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
      identifier = { name = "not-gloss"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Painless 3D graphics, no affiliation with gloss";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
          ];
        buildable = true;
        };
      exes = {
        "not-gloss-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."spatial-math" or (errorHandler.buildDepError "spatial-math"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
            ];
          buildable = true;
          };
        };
      };
    }