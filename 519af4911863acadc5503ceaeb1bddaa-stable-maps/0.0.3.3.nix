{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stable-maps";
          version = "0.0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett";
        homepage = "http://github.com/ekmett/stable-maps";
        url = "";
        synopsis = "Heterogeneous maps keyed by StableNames";
        description = "Provides an API for inserting heterogeneous data in a collection keyed by StableNames and for later retrieving it.";
        buildType = "Simple";
      };
      components = {
        stable-maps = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ghc-prim
          ];
        };
      };
    }