{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "dia-functions";
          version = "0.2.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "divip@aszt.inf.elte.hu";
        author = "Péter Diviánszky";
        homepage = "";
        url = "";
        synopsis = "An EDSL for teaching Haskell with diagrams - functions";
        description = "This package contains diagram manipulating functions\nand an SVG backend.\n\nFor exaples see <http://pnyf.inf.elte.hu/fp/Diagrams_en.xml> and <http://pnyf.inf.elte.hu/fp/FunctionGraphs_en.xml>\n\nChanges since 0.2: Emit smaller floating point literals in SVG render; export more functions.\nChanges since 0.1: Reimplement the Graphics.Diagrams.FunctionGraphs module.";
        buildType = "Simple";
      };
      components = {
        dia-functions = {
          depends  = [
            hsPkgs.data-pprint
            hsPkgs.dia-base
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.xhtml
            hsPkgs.mtl
            hsPkgs.deepseq
          ];
        };
      };
    }