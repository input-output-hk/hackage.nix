{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glazier-react-widget";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/glazier-react-widget#readme";
        url = "";
        synopsis = "Generic widget library using glazier-react";
        description = "Generic widget library using glazier-react. Please see README.md.";
        buildType = "Simple";
      };
      components = {
        glazier-react-widget = {
          depends  = ([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-diverse
            hsPkgs.data-diverse-lens
            hsPkgs.deepseq
            hsPkgs.Diff
            hsPkgs.dlist
            hsPkgs.glazier
            hsPkgs.glazier-react
            hsPkgs.javascript-extras
            hsPkgs.lens
            hsPkgs.lens-misc
            hsPkgs.monadlist
            hsPkgs.mtl
            hsPkgs.tagged
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) hsPkgs.ghcjs-base) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.ghcjs-base-stub;
        };
      };
    }