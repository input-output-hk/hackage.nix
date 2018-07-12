{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sampling";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jared@jtobin.ca";
        author = "Jared Tobin";
        homepage = "https://github.com/jtobin/sampling";
        url = "";
        synopsis = "Sample values from collections.";
        description = "Basic sampling tools.\n\nExports variations on two simple functions for sampling from arbitrary\n'Foldable' collections:\n\n* 'sample', for sampling without replacement\n\n* 'resample', for sampling with replacement (i.e., a bootstrap)\n\nEach variation can be prefixed with 'p' to sample from a container of values\nweighted by probability.";
        buildType = "Simple";
      };
      components = {
        "sampling" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.foldl
            hsPkgs.mwc-random
            hsPkgs.primitive
            hsPkgs.vector
          ];
        };
        tests = {
          "resample" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sampling
            ];
          };
        };
        benchmarks = {
          "bench-sampling" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.sampling
            ];
          };
        };
      };
    }