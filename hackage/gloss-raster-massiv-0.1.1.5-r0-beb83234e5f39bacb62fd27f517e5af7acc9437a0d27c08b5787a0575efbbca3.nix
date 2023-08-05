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
      identifier = { name = "gloss-raster-massiv"; version = "0.1.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mattm.github@gmail.com";
      author = "Matthew Mosior";
      homepage = "https://github.com/Matthew-Mosior/gloss-raster-massiv";
      url = "";
      synopsis = "Massiv-based alternative for gloss-raster";
      description = "This library utilizes massiv's superb performance characteristics to supply alternative rasterization functionality to that which is provided by the gloss-raster package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
          (hsPkgs."derive-storable-plugin" or (errorHandler.buildDepError "derive-storable-plugin"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."gloss-rendering" or (errorHandler.buildDepError "gloss-rendering"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          ];
        buildable = true;
        };
      tests = {
        "gloss-raster-massiv-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss-raster-massiv" or (errorHandler.buildDepError "gloss-raster-massiv"))
            ];
          buildable = true;
          };
        };
      };
    }