{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "BASIC";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Embedded BASIC";
        description = "A simplified version of the original BASIC embedded in Haskell.";
        buildType = "Simple";
      };
      components = {
        BASIC = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.llvm
            hsPkgs.random
            hsPkgs.timeit
          ];
        };
      };
    }