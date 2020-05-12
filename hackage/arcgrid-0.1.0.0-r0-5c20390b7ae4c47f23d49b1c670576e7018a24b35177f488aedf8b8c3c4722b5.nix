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
      identifier = { name = "arcgrid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nbrk@linklevel.net";
      author = "Nikolay Burkov";
      homepage = "https://github.com/nbrk/arcgrid";
      url = "";
      synopsis = "Parse ESRI/ArcInfo (ArcGrid) raster GIS files";
      description = "A parser for ESRI/ArcInfo (ArcGrid) files. These are raster\nGIS files widely used by many geographics-related software\nto represent elevations or terrain features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."parsec-numeric" or (errorHandler.buildDepError "parsec-numeric"))
          ];
        buildable = true;
        };
      exes = {
        "arcgrid-dump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."arcgrid" or (errorHandler.buildDepError "arcgrid"))
            ];
          buildable = true;
          };
        };
      };
    }