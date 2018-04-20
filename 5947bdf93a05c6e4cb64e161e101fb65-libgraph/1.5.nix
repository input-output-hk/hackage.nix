{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libgraph";
          version = "1.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Maarten Faddegon";
        maintainer = "libgraph@maartenfaddegon.nl";
        author = "Maarten Faddegon";
        homepage = "http://maartenfaddegon.nl";
        url = "";
        synopsis = "Store and manipulate data in a graph.";
        description = "A graph type, analysis of graphs and manipulation of graphs.";
        buildType = "Simple";
      };
      components = {
        libgraph = {
          depends  = [
            hsPkgs.base
            hsPkgs.monads-tf
            hsPkgs.union-find
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.process
          ];
        };
      };
    }