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
      identifier = { name = "rasterific-svg"; version = "0.1"; };
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
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
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
      tests = {
        "svgtest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."rasterific-svg" or (errorHandler.buildDepError "rasterific-svg"))
            (hsPkgs."Rasterific" or (errorHandler.buildDepError "Rasterific"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."svg-tree" or (errorHandler.buildDepError "svg-tree"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            ];
          buildable = true;
          };
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rasterific-svg" or (errorHandler.buildDepError "rasterific-svg"))
            (hsPkgs."Rasterific" or (errorHandler.buildDepError "Rasterific"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."svg-tree" or (errorHandler.buildDepError "svg-tree"))
            ];
          buildable = true;
          };
        };
      };
    }