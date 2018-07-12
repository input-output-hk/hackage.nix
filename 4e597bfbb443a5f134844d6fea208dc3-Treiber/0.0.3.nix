{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Treiber";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Julian Sutherland (julian.sutherland10@imperial.ac.uk)";
        author = "Julian Sutherland";
        homepage = "https://github.com/Julek";
        url = "";
        synopsis = "Lock free Treiber stack";
        description = "An implementation of Treiber stacks, a lock free stack. Works with any monad that has atomically modificable references. Removed debug code accidentally left in in version 0.0.1 and added specializations of the TreiberStack data structure to the IO and STM monads (forgotten to export in 0.0.2).";
        buildType = "Simple";
      };
      components = {
        "Treiber" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.monad-loops
            hsPkgs.ref-mtl
            hsPkgs.stm
          ];
        };
      };
    }