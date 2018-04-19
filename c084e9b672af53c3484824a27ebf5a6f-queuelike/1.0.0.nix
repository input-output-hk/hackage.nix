{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "queuelike";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wasserman.louis@gmail.com";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "A library of queuelike data structures, both functional and stateful.";
        description = "Contains several implementations of data structures implementing a /single-in, single-out/ paradigm.  Intended to be a better, more useful replacement for pqueue-mtl.";
        buildType = "Simple";
      };
      components = {
        queuelike = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.stateful-mtl
            hsPkgs.utility-ht
          ];
        };
      };
    }