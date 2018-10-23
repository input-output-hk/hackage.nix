{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "graphviz";
        version = "2008.9.6";
      };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman";
      maintainer = "matthew@wellquite.org";
      author = "Matthew Sackman";
      homepage = "";
      url = "";
      synopsis = "GraphViz wrapper for Haskell";
      description = "Allows you to convert Data.Graph... graphs into dot format,\nand parse them back in, as a Dot structure.\nOr, you can run your Data.Graph...graph via dot, get the positional\ninformation out from dot and build a new graph, combining the\npositional information with the original graph.";
      buildType = "Simple";
    };
    components = {
      "graphviz" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.fgl)
          (hsPkgs.polyparse)
        ];
      };
    };
  }