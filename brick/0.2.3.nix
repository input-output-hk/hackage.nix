{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      demos = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "brick";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Jonathan Daugherty 2015";
        maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
        author = "Jonathan Daugherty <cygnus@foobox.com>";
        homepage = "https://github.com/jtdaugherty/brick/";
        url = "";
        synopsis = "A declarative terminal user interface library";
        description = "Write terminal applications painlessly with 'brick'! You write an\nevent handler and a drawing function and the library does the rest.\n\n\n> module Main where\n>\n> import Brick\n>\n> ui :: Widget\n> ui = str \"Hello, world!\"\n>\n> main :: IO ()\n> main = simpleMain ui\n\n\nTo get started, see:\n\n* <https://github.com/jtdaugherty/brick/blob/master/README.md The README>\n\n* The <https://github.com/jtdaugherty/brick/blob/master/docs/guide.rst Brick user guide>\n\n* The demonstration programs in the 'programs' directory\n\n\nThis package deprecates <http://hackage.haskell.org/package/vty-ui vty-ui>.";
        buildType = "Simple";
      };
      components = {
        brick = {
          depends  = [
            hsPkgs.base
            hsPkgs.vty
            hsPkgs.transformers
            hsPkgs.data-default
            hsPkgs.Diff
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.vector
            hsPkgs.contravariant
            hsPkgs.text
            hsPkgs.text-zipper
            hsPkgs.template-haskell
            hsPkgs.deepseq
          ];
        };
        exes = {
          brick-visibility-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-viewport-scroll-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-dialog-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-layer-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-suspend-resume-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-padding-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-attr-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-markup-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-list-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
              hsPkgs.vector
            ];
          };
          brick-custom-event-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-hello-world-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-edit-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
          brick-border-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.lens
            ];
          };
        };
      };
    }