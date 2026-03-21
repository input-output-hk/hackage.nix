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
      specVersion = "3.0";
      identifier = { name = "gb-sprite"; version = "0.5.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "devon.tomlin@novavero.ai";
      author = "Devon Tomlin";
      homepage = "https://github.com/Gondola-Bros-Entertainment/gb-sprite";
      url = "";
      synopsis = "Pure Haskell 2D raster graphics engine";
      description = "A pure Haskell 2D raster graphics engine for procedurally\ngenerating sprites, animations, and visual effects. Drawing\nprimitives, transforms, compositing with blend modes, image\nfilters, procedural noise, isometric projection, sprite sheets,\nbitmap text, color grading, and dithering — no external image\nlibraries. Export to BMP and PNG natively.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      tests = {
        "gb-sprite-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."gb-sprite" or (errorHandler.buildDepError "gb-sprite"))
          ];
          buildable = true;
        };
      };
    };
  }