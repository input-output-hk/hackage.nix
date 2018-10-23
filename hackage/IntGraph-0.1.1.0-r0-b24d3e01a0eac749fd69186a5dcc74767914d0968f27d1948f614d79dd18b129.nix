{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "IntGraph";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Sam Barr";
      maintainer = "sbarr@oberlin.edu";
      author = "Sam Barr";
      homepage = "https://github.com/sam-barr/IntGraph#readme";
      url = "";
      synopsis = "Dynamically sized graph library";
      description = "Graph implemented as an IntMap to Sets of Ints. Functions for Directed and Undirected graphs are provided.";
      buildType = "Simple";
    };
    components = {
      "IntGraph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "IntGraph-test" = {
          depends  = [
            (hsPkgs.IntGraph)
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }