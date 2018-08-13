{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "graph-visit";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "atze@uu.nl";
      author = "Atze Dijkstra";
      homepage = "https://github.com/atzedijkstra/graph-visit";
      url = "";
      synopsis = "Graph walk abstraction";
      description = "Walk over a graph, abstracting away from the underlying representation, not caring about precise order";
      buildType = "Simple";
    };
    components = {
      "graph-visit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-template)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }