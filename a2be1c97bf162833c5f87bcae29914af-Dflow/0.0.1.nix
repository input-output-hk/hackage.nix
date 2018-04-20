{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Dflow";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "© Paul Johnson 2012";
        maintainer = "<paul@cogito.org.uk>";
        author = "Paul Johnson";
        homepage = "";
        url = "";
        synopsis = "Processing Real-time event streams";
        description = "This library provides Real Time Stream Processors (RTSPs). An RTSP\ntransforms an input event stream into an output event stream. The output\nevents occur asynchronously with input events. RTSPs can be composed into\npipelines or executed in parallel and their outputs merged. A Real Time\nAction (RTA) monad is provided for creating new primitive RTSPs.";
        buildType = "Simple";
      };
      components = {
        Dflow = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.stm
            hsPkgs.QuickCheck
            hsPkgs.containers
          ];
        };
        tests = {
          ArbTest = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }