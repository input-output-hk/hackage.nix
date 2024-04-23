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
      identifier = { name = "Persistence"; version = "1.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eben.cowley42@gmail.com";
      author = "Eben Cowley";
      homepage = "";
      url = "";
      synopsis = "Quickly detect clusters and holes in data.";
      description = "Persistence is a topological data analysis library motivated by flexibility when it comes to the type of data being analyzed. If you have data that comes with a meaningful function into something of the Ord typeclass, you can use Persistence to detect clusters and holes in the data. You can also use the library to analyze the topology of directed\\/undirected weighted\\/unweighted graphs, and compare topologies of different data sets.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."maximal-cliques" or (errorHandler.buildDepError "maximal-cliques"))
        ];
        buildable = true;
      };
    };
  }