{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tdigest-Chart";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/futurice/haskell-tdigest#readme";
        url = "";
        synopsis = "Chart generation from tdigest";
        description = "Chart generation from tdigest.\n\n@\n...\n@";
        buildType = "Simple";
      };
      components = {
        tdigest-Chart = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.colour
            hsPkgs.semigroupoids
            hsPkgs.tdigest
            hsPkgs.lens
            hsPkgs.Chart
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tdigest-chart-examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.Chart
              hsPkgs.lens
              hsPkgs.tdigest
              hsPkgs.tdigest-Chart
              hsPkgs.vector
              hsPkgs.Chart-diagrams
              hsPkgs.mwc-random
              hsPkgs.statistics
            ];
          };
        };
      };
    }