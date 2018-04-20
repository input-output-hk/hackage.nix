{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glazier-react";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/glazier-react#readme";
        url = "";
        synopsis = "ReactJS binding using Glazier and Pipes.Fluid";
        description = "ReactJS binding using Glazier and Pipes.Fluid, which is\nmore functional and composable than Elm/Flux.";
        buildType = "Simple";
      };
      components = {
        glazier-react = {
          depends  = ([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.disposable
            hsPkgs.dlist
            hsPkgs.free
            hsPkgs.glazier
            hsPkgs.javascript-extras
            hsPkgs.lens
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.pipes-concurrency
            hsPkgs.profunctors
            hsPkgs.semigroupoids
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional compiler.isGhcjs hsPkgs.ghcjs-base) ++ pkgs.lib.optional (!compiler.isGhcjs) hsPkgs.ghcjs-base-stub;
        };
      };
    }