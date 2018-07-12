{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "union-find-array";
          version = "0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2010-2013, Bertram Felgenhauer";
        maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
        author = "Bertram Felgenhauer";
        homepage = "https://github.com/haskell-rewriting/union-find-array";
        url = "";
        synopsis = "union find data structure";
        description = "ST based implementation of Tarjan\\'s disjoint set forests, using mutable\narrays storing indices instead of references internally. There is also\na pure, immutable version of the data structure, which is useful for\nquerying the result of a union find construction.";
        buildType = "Simple";
      };
      components = {
        "union-find-array" = {
          depends  = [
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.base
          ];
        };
      };
    }