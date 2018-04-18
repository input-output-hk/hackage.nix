{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      build-examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-vdom";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "stegeman@gmail.com";
        author = "Luite Stegeman";
        homepage = "";
        url = "";
        synopsis = "Virtual-dom bindings for GHCJS";
        description = "Virtual-dom is a library for fast incremental DOM\nupdates by comparing virtual immutable DOM trees to\nfind a minimal number of changes to update the actual DOM.\nThe bindings support memoized nodes which are only\nrecomputed when the underlying data changes, using\nreferential equality for the function and arguments.\nThe diff procedure in the virtual-dom library has been\nmodified slightly to support computing a diff in an\nasynchronous thread. Since computing a diff forces all data\naround the virtual-dom tree, the computation, the computation\ncan be expensive.\nAn asynchronous diff computation can be safely aborted\nwith an async exception.";
        buildType = "Simple";
      };
      components = {
        ghcjs-vdom = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.ghcjs-ffiqq
            hsPkgs.ghcjs-base
            hsPkgs.ghcjs-prim
            hsPkgs.containers
            hsPkgs.split
            hsPkgs.template-haskell
          ];
        };
        exes = {
          ghcjs-vdom-example-table = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghcjs-ffiqq
              hsPkgs.ghcjs-vdom
              hsPkgs.containers
              hsPkgs.ghcjs-base
            ];
          };
          ghcjs-vdom-example-components = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghcjs-ffiqq
              hsPkgs.ghcjs-vdom
              hsPkgs.containers
              hsPkgs.ghcjs-base
            ];
          };
          ghcjs-vdom-example-render = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghcjs-ffiqq
              hsPkgs.ghcjs-vdom
              hsPkgs.containers
              hsPkgs.ghcjs-base
            ];
          };
        };
      };
    }