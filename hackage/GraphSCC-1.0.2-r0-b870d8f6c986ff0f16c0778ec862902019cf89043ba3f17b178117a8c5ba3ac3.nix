{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { use-maps = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "GraphSCC";
        version = "1.0.2";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }