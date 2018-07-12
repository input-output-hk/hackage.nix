{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      demos = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "brick";
          version = "0.25";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Jonathan Daugherty 2015-2016";
        maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
        author = "Jonathan Daugherty <cygnus@foobox.com>";
        homepage = "https://github.com/jtdaugherty/brick/";
        url = "";
        synopsis = "A declarative terminal user interface library";
        description = "Write terminal applications painlessly with 'brick'! You write an\nevent handler and a drawing function and the library does the rest.\n\n\n> module Main where\n>\n> import Brick\n>\n> ui :: Widget ()\n> ui = str \"Hello, world!\"\n>\n> main :: IO ()\n> main = simpleMain ui\n\n\nTo get started, see:\n\n* <https://github.com/jtdaugherty/brick/blob/master/README.md The README>\n\n* The <https://github.com/jtdaugherty/brick/blob/master/docs/guide.rst Brick user guide>\n\n* The demonstration programs in the 'programs' directory\n\n\nThis package deprecates <http://hackage.haskell.org/package/vty-ui vty-ui>.";
        buildType = "Simple";
      };
      components = {
        "brick" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vty
            hsPkgs.transformers
            hsPkgs.data-clist
            hsPkgs.dlist
            hsPkgs.containers
            hsPkgs.microlens
            hsPkgs.microlens-th
            hsPkgs.microlens-mtl
            hsPkgs.vector
            hsPkgs.contravariant
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.text-zipper
            hsPkgs.template-haskell
            hsPkgs.deepseq
            hsPkgs.word-wrap
          ];
        };
        exes = {
          "brick-readme-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.text
            ];
          };
          "brick-text-wrap-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.text
              hsPkgs.word-wrap
            ];
          };
          "brick-cache-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
            ];
          };
          "brick-visibility-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
            ];
          };
          "brick-viewport-scroll-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
            ];
          };
          "brick-dialog-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
            ];
          };
          "brick-mouse-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.text-zipper
            ];
          };
          "brick-layer-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
            ];
          };
          "brick-suspend-resume-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
            ];
          };
          "brick-padding-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
            ];
          };
          "brick-attr-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
            ];
          };
          "brick-markup-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
            ];
          };
          "brick-list-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.vector
            ];
          };
          "brick-custom-event-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
              hsPkgs.microlens-th
            ];
          };
          "brick-fill-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
            ];
          };
          "brick-hello-world-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
            ];
          };
          "brick-edit-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.microlens
              hsPkgs.microlens-th
            ];
          };
          "brick-border-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
            ];
          };
          "brick-progressbar-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.microlens
            ];
          };
        };
      };
    }