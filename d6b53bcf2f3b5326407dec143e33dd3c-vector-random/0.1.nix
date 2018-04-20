{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "vector-random";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/vector-random";
        url = "";
        synopsis = "Generate vectors filled with high quality pseudorandom numbers";
        description = "";
        buildType = "Simple";
      };
      components = {
        vector-random = {
          depends  = [
            hsPkgs.base
            hsPkgs.mersenne-random
            hsPkgs.vector
          ];
        };
      };
    }