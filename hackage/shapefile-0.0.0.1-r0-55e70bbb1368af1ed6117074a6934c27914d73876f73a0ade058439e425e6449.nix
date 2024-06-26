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
      specVersion = "1.2";
      identifier = { name = "shapefile"; version = "0.0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/shapefile";
      url = "";
      synopsis = "Parser and related tools for ESRI shapefile format";
      description = "A very simple interface for processing data in ESRI\nshapefile format.  Includes functions for reading or\nwriting whole .shp and .shx files, as well as for\ngenerating .shx index files from .shp data files.\nAlso includes an interface to read individual records\non-demand from shapefiles, useful for very large databases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dbf" or (errorHandler.buildDepError "dbf"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."rwlock" or (errorHandler.buildDepError "rwlock"))
        ];
        buildable = true;
      };
    };
  }