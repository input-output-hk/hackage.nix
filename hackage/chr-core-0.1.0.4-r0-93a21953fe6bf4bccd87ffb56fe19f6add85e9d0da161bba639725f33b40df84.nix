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
        name = "chr-core";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "atzedijkstra@gmail.com";
      author = "Atze Dijkstra";
      homepage = "https://github.com/atzedijkstra/chr";
      url = "";
      synopsis = "Constraint Handling Rules";
      description = "Constraint Handling Rules evaluation engine";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.pqueue)
          (hsPkgs.chr-data)
          (hsPkgs.chr-pretty)
          (hsPkgs.logict-state)
        ];
      };
    };
  }