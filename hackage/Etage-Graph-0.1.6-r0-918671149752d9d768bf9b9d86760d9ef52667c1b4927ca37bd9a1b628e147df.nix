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
      specVersion = "1.8";
      identifier = {
        name = "Etage-Graph";
        version = "0.1.6";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2011-2012 Mitar Milutinovic";
      maintainer = "mitar.haskell@tnode.com";
      author = "Mitar Milutinovic";
      homepage = "http://mitar.tnode.com";
      url = "";
      synopsis = "Data-flow based graph algorithms";
      description = "Data-flow based graph algorithms using the \"Control.Etage\" framework, showcasing its use for data-flow\ncomputations. It is meant to be used with the \"Data.Graph.Inductive\" package which provides graph structures\nthese algorithms take as an input.\n\nCurrently only the shortest paths computation is implemented (from all to all nodes).\n\nAlso a benchmarking @test@ program is provided, comparing the performance with algorithms found in the\n\"Data.Graph.Inductive\" package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Etage)
          (hsPkgs.fgl)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "etage-graph-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fgl)
            (hsPkgs.random)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.array)
            (hsPkgs.time)
            (hsPkgs.parallel)
            (hsPkgs.Etage)
            (hsPkgs.Etage-Graph)
          ];
        };
      };
    };
  }