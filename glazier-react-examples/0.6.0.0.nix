{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glazier-react-examples";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/glazier-react#readme";
        url = "";
        synopsis = "Examples of using glazier-react";
        description = "Examples of using glazier-react";
        buildType = "Simple";
      };
      components = {
        exes = {
          glazier-react-todo = {
            depends  = ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.disposable
              hsPkgs.dlist
              hsPkgs.free
              hsPkgs.glazier
              hsPkgs.glazier-react
              hsPkgs.glazier-react-widget
              hsPkgs.javascript-extras
              hsPkgs.lens
              hsPkgs.mmorph
              hsPkgs.mtl
              hsPkgs.pipes
              hsPkgs.pipes-concurrency
              hsPkgs.pipes-misc
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ] ++ optionals compiler.isGhcjs [
              hsPkgs.ghcjs-base
              hsPkgs.ghcjs-prim
            ]) ++ pkgs.lib.optional (!compiler.isGhcjs) hsPkgs.ghcjs-base-stub;
          };
        };
      };
    }