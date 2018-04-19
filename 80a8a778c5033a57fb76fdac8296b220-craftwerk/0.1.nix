{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "craftwerk";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Malte Harder <malte.harder@gmail.com>";
        author = "Malte Harder <malte.harder@gmail.com>";
        homepage = "http://mahrz.github.com/craftwerk.html";
        url = "";
        synopsis = "2D graphics library with integrated TikZ output.";
        description = "A high-level and easy to use graphics library\nwith integrated TikZ output.\n\nCraftwerk is a high-level 2D vector graphics library for output of\nTikZ pictures that can be typeset using (pdf)LaTeX. The TikZ library\nand documentation can be found at: <http://sourceforge.net/projects/pgf>.\n\nCraftwerk tries to encapsulate the graphics backend such that figures\ncan also be rendered with a Cairo backend and quickly displayed in a\nGtk window. The aim is to support TikZ and Cairo seamlessly as\npossible, meaning that graphics produced with either backend should\nlook as similar as possible. Other backends are easily written and the\naim is to provide generic fallback functions for features that are not\nnatively supported by some backend.\n\nThanks to Jannis Harder for some contributions and ideas to the\nlibrary.";
        buildType = "Custom";
      };
      components = {
        craftwerk = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.vector-space
            hsPkgs.colour
          ];
        };
        exes = {
          example1 = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.craftwerk
            ];
          };
          example2 = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.craftwerk
            ];
          };
          example3 = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.craftwerk
            ];
          };
          test-craftwerk = {
            depends  = pkgs.lib.optionals (!(!_flags.tests)) [
              hsPkgs.base
              hsPkgs.craftwerk
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }