{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      enableassertions = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "vector";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Roman Leshchinskiy 2008";
        maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
        author = "Roman Leshchinskiy";
        homepage = "http://darcs.haskell.org/vector";
        url = "";
        synopsis = "Efficient Arrays";
        description = "\nAn efficient but highly experimental implementation of Int-indexed\narrays with a powerful loop fusion framework.\n";
        buildType = "Simple";
      };
      components = {
        vector = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.ghc-prim
            hsPkgs.ghc
          ];
        };
      };
    }