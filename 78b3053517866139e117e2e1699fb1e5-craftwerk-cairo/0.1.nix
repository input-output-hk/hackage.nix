{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "craftwerk-cairo";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Malte Harder <malte.harder@gmail.com>";
        author = "Malte Harder <malte.harder@gmail.com>";
        homepage = "http://mahrz.github.com/craftwerk.html";
        url = "";
        synopsis = "Cairo backend for Craftwerk.";
        description = "Cairo backend for Craftwerk, a high-level and easy to use graphics library\nwith integrated TikZ output.\n\nCraftwerk is a high-level 2D vector graphics library for output of\nTikZ pictures that can be typeset using (pdf)LaTeX. The TikZ library\nand documentation can be found at: <http://sourceforge.net/projects/pgf>.\n\nCraftwerk tries to encapsulate the graphics backend such that figures\ncan also be rendered with a Cairo backend and quickly displayed in a\nGtk window. The aim is to support TikZ and Cairo seamlessly as\npossible, meaning that graphics produced with either backend should\nlook as similar as possible. Other backends are easily written and the\naim is to provide generic fallback functions for features that are not\nnatively supported by some backend.";
        buildType = "Simple";
      };
      components = {
        "craftwerk-cairo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.cairo
            hsPkgs.craftwerk
          ];
        };
      };
    }