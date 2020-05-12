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
      identifier = { name = "curves"; version = "1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ulf.norell@gmail.com";
      author = "Ulf Norell";
      homepage = "";
      url = "";
      synopsis = "Library for drawing curve based images.";
      description = "Curves is an easy to use library for creating images. The\nbasic primitive is a curve, which, in the simplest case, is\na continuous function from a scalar parameter to a\n2-dimensional point on the curve. Images are rendered as\nPNG images.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ];
        buildable = true;
        };
      };
    }