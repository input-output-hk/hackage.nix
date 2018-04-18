{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logict-state";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzedijkstra@gmail.com";
        author = "Atze Dijkstra";
        homepage = "https://github.com/atzedijkstra/logict-state";
        url = "";
        synopsis = "Library for logic programming based on haskell package logict";
        description = "Logic programming built on top of part of logict library, in particular for dealing with backtrackable state";
        buildType = "Simple";
      };
      components = {
        logict-state = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.logict
          ];
        };
      };
    }