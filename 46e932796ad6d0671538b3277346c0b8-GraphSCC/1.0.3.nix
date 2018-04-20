{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use-maps = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "GraphSCC";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Iavor S. Diatchki";
        homepage = "";
        url = "";
        synopsis = "Tarjan's algorithm for computing the strongly connected components of a graph.";
        description = "Tarjan's algorithm for computing the strongly connected components of a graph.";
        buildType = "Simple";
      };
      components = {
        GraphSCC = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
          ];
        };
      };
    }