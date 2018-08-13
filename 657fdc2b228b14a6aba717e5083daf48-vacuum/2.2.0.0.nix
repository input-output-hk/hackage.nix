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
      specVersion = "1.10";
      identifier = {
        name = "vacuum";
        version = "2.2.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "Copyright (c) Matt Morrow  2009,\n(c) Austin Seipp 2011-2012";
      maintainer = "Austin Seipp <mad.one@gmail.com>";
      author = "Matt Morrow";
      homepage = "http://thoughtpolice.github.com/vacuum";
      url = "";
      synopsis = "Graph representation of the GHC heap";
      description = "Vacuum is a library for extracting graph representations of values\nfrom the GHC heap at runtime. Those graphs may then be further\nprocessed or translated to various representations for visualization --\nlike Graphviz, or Ubigraph.\n\nBy itself this library is not of much use to most users, unless you\nwant to use the raw graph data to visualize the heap in some (new)\nway. Most people will want to translate the graph representation to\nsomething like GraphViz format, which can then be rendered to a\npretty PNG or SVG file for viewing. See the @vacuum-graphviz@\npackage for more.";
      buildType = "Simple";
    };
    components = {
      "vacuum" = {
        depends  = [
          (hsPkgs.ghc-prim)
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }