{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "graphql-w-persistent"; version = "0.3.2.1"; };
      license = "ISC";
      copyright = "";
      maintainer = "jasonsychau@live.ca";
      author = "JASON CHAU";
      homepage = "https://github.com/jasonsychau/graphql-w-persistent";
      url = "";
      synopsis = "Haskell GraphQL query parser-interpreter-data processor.";
      description = "This is a Haskell GraphQL query parser and interpreter. It is including data processing to return GraphQL object formats. The query parser and interpreter are universal (on available database query types which is only SQL for now). It is accepting any string query, and it is returning a list of string database-queries. The data processing unit is designed about the return values from the Yesod and Persistent interface (casted as Text data values from PersistValue). With another database package that is same data structure on the returned values from the database, this entire package is applicable. Examples are odbc package query function and HDBC package quickQuery. To read more detailed information, you should go to the below module page.";
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