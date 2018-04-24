{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glazier-react-widget";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/glazier-react-widget#readme";
        url = "";
        synopsis = "Generic widget library using glazier-react";
        description = "Generic widget library using glazier-react";
        buildType = "Simple";
      };
      components = {
        glazier-react-widget = {
          depends  = ([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.disposable
            hsPkgs.dlist
            hsPkgs.free
            hsPkgs.glazier
            hsPkgs.glazier-react
            hsPkgs.javascript-extras
            hsPkgs.lens
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.pipes-concurrency
            hsPkgs.stm
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) hsPkgs.ghcjs-base) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.ghcjs-base-stub;
        };
      };
    }