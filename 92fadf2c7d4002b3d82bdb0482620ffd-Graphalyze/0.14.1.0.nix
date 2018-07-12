{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Graphalyze";
          version = "0.14.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Graph-Theoretic Analysis library.";
        description = "A library to use graph theory to analyse the relationships\ninherent in discrete data.";
        buildType = "Simple";
      };
      components = {
        "Graphalyze" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.random
            hsPkgs.time
            hsPkgs.bktrees
            hsPkgs.fgl
            hsPkgs.graphviz
            hsPkgs.pandoc
            hsPkgs.text
          ];
        };
      };
    }