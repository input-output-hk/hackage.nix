{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "krpc";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013, Sam Truzjan";
        maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
        author = "Sam Truzjan";
        homepage = "https://github.com/cobit/krpc";
        url = "";
        synopsis = "KRPC remote procedure call protocol implementation.";
        description = "KRPC remote procedure call protocol implementation.";
        buildType = "Simple";
      };
      components = {
        krpc = {
          depends  = [
            hsPkgs.base
            hsPkgs.lifted-base
            hsPkgs.transformers
            hsPkgs.monad-control
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.bencoding
            hsPkgs.network
          ];
        };
        exes = {
          test-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bencoding
              hsPkgs.krpc
              hsPkgs.network
            ];
          };
          bench-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.krpc
              hsPkgs.network
            ];
          };
        };
        tests = {
          test-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.bencoding
              hsPkgs.krpc
              hsPkgs.network
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
        benchmarks = {
          bench-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.krpc
              hsPkgs.network
            ];
          };
        };
      };
    }