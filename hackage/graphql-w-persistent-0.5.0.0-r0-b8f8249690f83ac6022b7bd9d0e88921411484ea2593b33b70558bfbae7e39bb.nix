{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "graphql-w-persistent"; version = "0.5.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "jasonsychau@live.ca";
      author = "JASON CHAU";
      homepage = "https://github.com/jasonsychau/graphql-w-persistent";
      url = "";
      synopsis = "GraphQL interface middleware for (SQL) databases.";
      description = "This is a Haskell GraphQL query parser and interpreter for databases. There is data processing to return GraphQL object formats. The query parser and interpreter are always applicable (on available database query types which is only SQL for now). It is accepting any string query, and it is returning a list of string database-queries. The data processing function is designed about the return values from the Persistent library (casted as Text data values from PersistValue). With another database package with same data structure on the returned values from the database, this whole package is applicable. Examples are odbc package query function and HDBC package quickQuery. To read more detailed information, you should go to the below module page.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.json)
          (hsPkgs.text)
          ];
        };
      };
    }