{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rand-vars";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Romain Edelmann";
        author = "Romain Edelmann";
        homepage = "";
        url = "";
        synopsis = "Random variable library, with Functor, Applicative and Monad instances.";
        description = "Random variable library, with Functor, Applicative and Monad instances.";
        buildType = "Simple";
      };
      components = {
        rand-vars = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.random
            hsPkgs.IntervalMap
          ];
        };
      };
    }