{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "vector-mmap";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel Peebles 2010";
        maintainer = "Daniel Peebles <pumpkingod@gmail.com>";
        author = "Daniel Peebles <pumpkingod@gmail.com>";
        homepage = "http://code.haskell.org/vector";
        url = "";
        synopsis = "Memory map immutable and mutable vectors";
        description = "Memory map immutable and mutable vectors.";
        buildType = "Simple";
      };
      components = {
        vector-mmap = {
          depends  = [
            hsPkgs.base
            hsPkgs.mmap
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
      };
    }