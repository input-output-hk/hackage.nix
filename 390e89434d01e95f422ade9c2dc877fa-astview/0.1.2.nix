{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "astview";
          version = "0.1.2";
        };
        license = "BSD-4-Clause";
        copyright = "";
        maintainer = "Sebastian Menge <sebastian.menge@udo.edu>";
        author = "Pascal Hof <pascal.hof@udo.edu>,\nSebastian Menge <sebastian.menge@udo.edu>";
        homepage = "";
        url = "";
        synopsis = "A GTK-based abstract syntax tree viewer for custom languages and parsers";
        description = "Astview is a graphical viewer for abstract\nsyntax trees. It is implemented on the basis\nof scrap-your-boilerplate (i.e. data2tree)\nand works with all parsers that generate trees\nthat are instances of the Data.Data class.\nCustom parsers can be dynamically loaded\n(via package hint) at startup.";
        buildType = "Custom";
      };
      components = {
        exes = {
          astview = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.Glob
              hsPkgs.containers
              hsPkgs.syb
              hsPkgs.hint
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.glade
              hsPkgs.gtksourceview2
              hsPkgs.astview-utils
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.process
            ];
          };
        };
      };
    }