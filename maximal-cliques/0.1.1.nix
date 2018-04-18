{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "maximal-cliques";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gershomb@gmail.com";
        author = "Gershom Bazerman";
        homepage = "";
        url = "";
        synopsis = "Enumerate all maximal cliques of a graph.";
        description = "Enumerate all maximal cliques of a graph. A clique is a set of nodes such that there is an edge between every node and every other node in the set. A maximal clique is a clique such that no node may be added while preserving the clique property.";
        buildType = "Simple";
      };
      components = {
        maximal-cliques = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
          ];
        };
      };
    }