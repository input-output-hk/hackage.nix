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
      specVersion = "1.0";
      identifier = { name = "tracker"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "will@willthompson.co.uk";
      author = "Will Thompson";
      homepage = "";
      url = "";
      synopsis = "Client library for Tracker metadata database, indexer and search tool";
      description = "Client library for Tracker metadata database, indexer and search tool";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }