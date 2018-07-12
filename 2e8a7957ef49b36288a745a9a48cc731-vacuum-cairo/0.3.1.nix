{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "vacuum-cairo";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Don Stewart 2009";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/vacuum-cairo";
        url = "";
        synopsis = "Visualize live Haskell data structures using vacuum, graphviz and cairo";
        description = "Visualize live Haskell data structures using vacuum, graphviz and cairo\n\n> \$ view \"hello\"\n\n<http://code.haskell.org/~dons/images/vacuum/hello.png>\n\n> \$ view [1..5]\n\n<http://code.haskell.org/~dons/images/vacuum/list.png>\n\n> \$ view (IntMap.fromList \$ zip [1..10] [1..])\n\n<http://code.haskell.org/~dons/images/vacuum/intmap.png>";
        buildType = "Simple";
      };
      components = {
        "vacuum-cairo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vacuum
            hsPkgs.gtk
            hsPkgs.cairo
            hsPkgs.svgcairo
            hsPkgs.process
            hsPkgs.pretty
            hsPkgs.directory
            hsPkgs.parallel
            hsPkgs.strict-concurrency
          ];
        };
      };
    }