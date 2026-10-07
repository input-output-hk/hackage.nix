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
      specVersion = "3.4";
      identifier = { name = "geometry-simple"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mpg@mpg.is";
      author = "Matthias Pall Gissurarson";
      homepage = "https://github.com/Tritlo/geometry-simple";
      url = "";
      synopsis = "Simple Features geometries, codecs, and pure planar operations";
      description = "Geometry values for the seven OGC Simple Features families: points,\nlinestrings, polygons, their multi-geometry forms, and geometry collections.\nCoordinates are XY, XYZ, XYM, or XYZM, and coordinate sequences are stored\nin unboxed vectors.\n\n\"Data.Geometry.WKB\" and \"Data.Geometry.WKT\" read and write ISO WKB and WKT.\nThe codecs check input structure, coordinate dimensions, line lengths,\nand ring closure. \"Data.Geometry.SimpleFeatures\" has accessors, planar\nmeasurements, spatial predicates, validity checks, overlays, round buffers,\nand measured-location queries.\n\nThe package needs no native library or database.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }