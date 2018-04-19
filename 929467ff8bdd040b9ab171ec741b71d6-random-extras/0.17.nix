{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "random-extras";
          version = "0.17";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Aristid Breitkreuz";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz";
        homepage = "http://github.com/aristidb/random-extras";
        url = "";
        synopsis = "Additional functions for random values.";
        description = "Additional functions for random values, based on random-fu. Inspired by random-shuffle.";
        buildType = "Simple";
      };
      components = {
        random-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.random-fu
          ];
        };
      };
    }