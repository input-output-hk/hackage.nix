{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "graphql-w-persistent"; version = "0.1.0.3"; };
      license = "ISC";
      copyright = "";
      maintainer = "jasonsychau@live.ca";
      author = "JASON CHAU";
      homepage = "https://github.com/jasonsychau/graphql-w-persistent";
      url = "";
      synopsis = "Haskell GraphQL query parser-interpreter-data processor.";
      description = "This is a general purpose Haskell GraphQL query parser and interpreter. It is including data processing to return GraphQL object formats. The query parser and interpreter are universal (on available database query types). It is accepting any string query, and it is returning a list of string database-queries. The data processing unit is designed around the return values from the Yesod and Persistent interface (cast as Text data values from PersistValue). With another server that is same data representation on the returned values from the database, this entire package is applicable. To read more detailed information, you should go to the below module page.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }