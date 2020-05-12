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
      identifier = { name = "gelatin-gl"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "schell.scivally@synapsegroup.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin/gelatin-gl";
      url = "";
      synopsis = "OpenGL rendering routines for the gelatin-picture graphics\nEDSL.";
      description = "This package provides most of a backend to\ngelatin-picture, a DSL for decribing two dimensional\npictures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."gelatin" or (errorHandler.buildDepError "gelatin"))
          (hsPkgs."gelatin-shaders" or (errorHandler.buildDepError "gelatin-shaders"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "gelatin-gl-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gelatin" or (errorHandler.buildDepError "gelatin"))
            (hsPkgs."gelatin-gl" or (errorHandler.buildDepError "gelatin-gl"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }