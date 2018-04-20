{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chr-lang";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzedijkstra@gmail.com";
        author = "Atze Dijkstra";
        homepage = "https://github.com/atzedijkstra/chr";
        url = "";
        synopsis = "AST + surface language around chr";
        description = "AST + surface language around chr, with executable for parsing and running the evaluator.";
        buildType = "Simple";
      };
      components = {
        chr-lang = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.fgl
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.chr-parse
            hsPkgs.chr-pretty
            hsPkgs.chr-data
            hsPkgs.chr-core
          ];
        };
        exes = {
          chr-term = {
            depends  = [
              hsPkgs.base
              hsPkgs.chr-data
              hsPkgs.chr-lang
            ];
          };
        };
      };
    }