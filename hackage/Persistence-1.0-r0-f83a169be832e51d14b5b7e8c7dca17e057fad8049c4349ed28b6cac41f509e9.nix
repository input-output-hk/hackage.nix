{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Persistence";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eben.cowley42@gmail.com";
      author = "Eben Cowley";
      homepage = "";
      url = "";
      synopsis = "Quickly detect clusters and holes in data.";
      description = "Persistence is a topological data analysis library motivated by flexibility when it comes to the type of data being analyzed. If you have data that comes with a meaningful function into something of the Ord typeclass, you can use Persistence to detect clusters and holes in the data. You can also use the library to analyze undirected graphs, and interesting features for directed graphs will be added soon.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.parallel)
          (hsPkgs.containers)
          (hsPkgs.maximal-cliques)
        ];
      };
    };
  }