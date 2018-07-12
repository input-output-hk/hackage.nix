{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "lazyarray";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fox@ucw.cz";
        author = "Milan Straka";
        homepage = "";
        url = "";
        synopsis = "Efficient implementation of lazy monolithic arrays (lazy in indexes).";
        description = "This package built on standard array package adds support for lazy monolithic arrays. Such arrays are lazy not only in their values, but in their indexes as well. Read the paper \\\"Efficient Graph Algorithms Using Lazy Monolithic Arrays\\\" (<http://citeseer.ist.psu.edu/95126.html>) for further details.";
        buildType = "Simple";
      };
      components = {
        "lazyarray" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }