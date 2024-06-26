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
      identifier = { name = "readshp"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "samvherwaarden@gmail.com";
      author = "Sam van Herwaarden";
      homepage = "";
      url = "";
      synopsis = "Code for reading ESRI Shapefiles.";
      description = "Provides code for binary parsing of ESRI shapefiles,\nwhere the .shp and the .dbf file are read. The code has\nnot been tested on a large variety of shapefiles so\nyour mileage may vary, but so far it has worked with\nno problems. At the moment only text and number fields\nin DBF files are read (the others are stored as\nByteString).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
        ];
        buildable = true;
      };
    };
  }