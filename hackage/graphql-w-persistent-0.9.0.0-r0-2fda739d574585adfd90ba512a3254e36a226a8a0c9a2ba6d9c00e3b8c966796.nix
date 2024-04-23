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
      identifier = { name = "graphql-w-persistent"; version = "0.9.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "jasonsychau@live.ca";
      author = "JASON CHAU";
      homepage = "https://github.com/jasonsychau/graphql-w-persistent";
      url = "";
      synopsis = "GraphQL interface middleware for (SQL) databases.";
      description = "This is an application of GraphQL to querying SQL databases. The package functions are to interpret GraphQL string queries, to make SQL queries, and to process list-style database-returned values into a GraphQL string output (which you may use with another program). The data processing functions are designed for the Persistent library return values, but any (Eq a) => [[a]] returned type is valid input to this library if translations (and a check for null value) are provided for data types (Text, Int64, Double, and Boolean). Prospect packages are the odbc package (with the query function) and HDBC package (with the quickQuery function). You may find another to suit your stack. Examples and applications are available at the homepage (GitHub). I would like a star while you are there.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }