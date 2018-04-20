{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "craftwerk-gtk";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Malte Harder <malte.harder@gmail.com>";
        author = "Malte Harder <malte.harder@gmail.com>";
        homepage = "http://mahrz.github.com/craftwerk.html";
        url = "";
        synopsis = "Gtk UI for Craftwerk.";
        description = "Gtk UI functions for Craftwerk, a high-level and easy to use graphics library\nwith integrated TikZ output.\n\nCraftwerk is a high-level 2D vector graphics library for output of\nTikZ pictures that can be typeset using (pdf)LaTeX. The TikZ library\nand documentation can be found at: <http://sourceforge.net/projects/pgf>.\n\nCraftwerk tries to encapsulate the graphics backend such that figures\ncan also be rendered with a Cairo backend and quickly displayed in a\nGtk window. The aim is to support TikZ and Cairo seamlessly as\npossible, meaning that graphics produced with either backend should\nlook as similar as possible. Other backends are easily written and the\naim is to provide generic fallback functions for features that are not\nnatively supported by some backend.";
        buildType = "Simple";
      };
      components = {
        craftwerk-gtk = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.gtk
            hsPkgs.containers
            hsPkgs.craftwerk-cairo
            hsPkgs.craftwerk
            hsPkgs.mtl
          ];
        };
        exes = {
          example1 = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.base
              hsPkgs.craftwerk
              hsPkgs.craftwerk-cairo
              hsPkgs.craftwerk-gtk
              hsPkgs.containers
            ];
          };
        };
      };
    }