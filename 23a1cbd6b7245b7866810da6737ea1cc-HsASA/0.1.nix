{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HsASA";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "John Meacham";
        homepage = "http://repetae.net/recent/out/HsASA.html";
        url = "";
        synopsis = "A haskell interface to Lester Ingber's adaptive simulating annealing code";
        description = "A haskell interface to Lester Ingber's adaptive simulating annealing code";
        buildType = "Simple";
      };
      components = {
        HsASA = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.haskell98
          ];
        };
      };
    }