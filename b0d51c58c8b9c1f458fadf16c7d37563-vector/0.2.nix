{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "vector";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Roman Leshchinskiy 2008";
        maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
        author = "Roman Leshchinskiy";
        homepage = "http://darcs.haskell.org/vector";
        url = "";
        synopsis = "Efficient Arrays";
        description = "\nAn efficient implementation of Int-indexed arrays with a powerful\nloop fusion framework.\n\nThis code is highly experimental and for the most part untested. Use\nat your own risk!";
        buildType = "Simple";
      };
      components = {
        "vector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.ghc-prim
            hsPkgs.ghc
          ];
        };
      };
    }