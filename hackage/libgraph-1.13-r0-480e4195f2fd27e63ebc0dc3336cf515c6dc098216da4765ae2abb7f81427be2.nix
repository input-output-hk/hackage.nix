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
        name = "libgraph";
        version = "1.13";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2016 Maarten Faddegon";
      maintainer = "libgraph@maartenfaddegon.nl";
      author = "Maarten Faddegon";
      homepage = "http://maartenfaddegon.nl";
      url = "";
      synopsis = "Store and manipulate data in a graph.";
      description = "A graph type, analysis of graphs and manipulation of graphs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monads-tf)
          (hsPkgs.union-find)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.process)
        ];
      };
    };
  }