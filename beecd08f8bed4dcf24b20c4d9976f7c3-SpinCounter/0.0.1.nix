{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "SpinCounter";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Julian Sutherland (julian.sutherland10@imperial.ac.uk)";
        author = "Julian Sutherland";
        homepage = "https://github.com/Julek";
        url = "";
        synopsis = "Lock free Spin Counter";
        description = "A simple lock-free spin counter.";
        buildType = "Simple";
      };
      components = {
        "SpinCounter" = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-loops
            hsPkgs.ref-mtl
            hsPkgs.stm
          ];
        };
      };
    }