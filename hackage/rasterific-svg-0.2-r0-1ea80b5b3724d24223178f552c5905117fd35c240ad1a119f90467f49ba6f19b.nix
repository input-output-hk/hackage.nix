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
      identifier = { name = "rasterific-svg"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vincent Berthoux";
      author = "Vincent Berthoux";
      homepage = "";
      url = "";
      synopsis = "SVG renderer based on Rasterific.";
      description = "SVG renderer that will let you render svg-tree parsed\nSVG file to a JuicyPixel image or Rasterific Drawing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Rasterific" or (errorHandler.buildDepError "Rasterific"))
          (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
          (hsPkgs."svg-tree" or (errorHandler.buildDepError "svg-tree"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "svgrender" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."rasterific-svg" or (errorHandler.buildDepError "rasterific-svg"))
            (hsPkgs."Rasterific" or (errorHandler.buildDepError "Rasterific"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
            (hsPkgs."svg-tree" or (errorHandler.buildDepError "svg-tree"))
            ];
          buildable = true;
          };
        };
      };
    }