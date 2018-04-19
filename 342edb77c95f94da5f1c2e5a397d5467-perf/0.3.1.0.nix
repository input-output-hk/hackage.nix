{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "perf";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/perf#readme";
        url = "";
        synopsis = "low-level performance statistics";
        description = "\nA set of tools to measure time performance.";
        buildType = "Simple";
      };
      components = {
        perf = {
          depends  = [
            hsPkgs.protolude
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.foldl
            hsPkgs.numhask
            hsPkgs.rdtsc
            hsPkgs.tdigest
            hsPkgs.time
          ];
        };
        exes = {
          perf-examples = {
            depends  = [
              hsPkgs.protolude
              hsPkgs.base
              hsPkgs.formatting
              hsPkgs.numhask
              hsPkgs.optparse-generic
              hsPkgs.perf
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.protolude
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.perf
            ];
          };
        };
      };
    }