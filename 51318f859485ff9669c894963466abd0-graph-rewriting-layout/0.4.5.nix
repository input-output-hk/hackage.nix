{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "graph-rewriting-layout";
          version = "0.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010, Jan Rochel";
        maintainer = "jan@rochel.info";
        author = "Jan Rochel";
        homepage = "http://rochel.info/#graph-rewriting";
        url = "";
        synopsis = "Force-directed node placement intended for incremental graph drawing";
        description = "Defines basic methods for force-directed node displacement that can be combined into an incremental graph-drawing procedure.";
        buildType = "Simple";
      };
      components = {
        graph-rewriting-layout = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.graph-rewriting
            hsPkgs.AC-Vector
          ];
        };
      };
    }