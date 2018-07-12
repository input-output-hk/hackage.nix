{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SourceGraph";
          version = "0.7.0.6";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Static code analysis using graph-theoretic techniques.";
        description = "Statically analyse Haskell source code using graph-theoretic\ntechniques.  Sample reports can be found at:\n<http://code.haskell.org/~ivanm/Sample_SourceGraph/SampleReports.html>\n\nTo use SourceGraph, call it as either:\n\n> SourceGraph path/to/Foo.cabal\n\nOr, if your project doesn't use Cabal, then there is limited support\nfor using an overall module from your program\\/library:\n\n> SourceGraph path/to/Foo.hs\n\nNote that the Cabal method is preferred, as it is better able to\ndetermine the project name and exported modules (when passing a\nHaskell file to SourceGraph, it uses that module's name as the overall\nname of project and assumes that it is the only exported module; as\nsuch, it works better for programs than libraries).\n\nWhichever way you run SourceGraph, it then creates a @SourceGraph@\nsubdirectory in the same directory as the file that was passed to it,\nand within that subdirectory creates the analysis report in\n@Foo.html@.\n\nSourceGraph is still experimental in terms of its ability to parse and\nproperly understand Haskell source code and in the types of analyses\nit performs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "SourceGraph" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.multiset
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.fgl
              hsPkgs.Graphalyze
              hsPkgs.graphviz
              hsPkgs.Cabal
              hsPkgs.haskell-src-exts
            ];
          };
        };
      };
    }