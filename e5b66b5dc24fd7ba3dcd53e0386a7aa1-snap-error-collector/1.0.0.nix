{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snap-error-collector";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Ollie Charles";
        homepage = "http://github.com/ocharles/snap-error-collector";
        url = "";
        synopsis = "Collect errors in batches and dispatch them";
        description = "";
        buildType = "Simple";
      };
      components = {
        "snap-error-collector" = {
          depends  = [
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.async
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.monad-loops
            hsPkgs.snap
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }