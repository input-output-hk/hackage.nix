{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "time-series";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "Copyright (C) 2013-2013 Parallel Scientific Labs, LLC.";
        maintainer = "atsuro.hoshino@parsci.com";
        author = "Atsuro Hoshino";
        homepage = "";
        url = "";
        synopsis = "Time series analysis.";
        description = "A package containing time series analysis prototyping.\n\nThe analysis is for finding time-shifted correlations from multiple\ntime series input data. In later phase, we might extend to do\nanalysis of burst detection, but other analysis than for finding\ncorrelations are not considered yet.";
        buildType = "Simple";
      };
      components = {
        time-series = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
        exes = {
          time-series = {
            depends  = [
              hsPkgs.base
              hsPkgs.time-series
            ];
          };
        };
      };
    }