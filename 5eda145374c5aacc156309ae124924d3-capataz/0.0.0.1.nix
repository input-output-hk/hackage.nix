{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "capataz";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "© 2018 Roman Gonzalez";
        maintainer = "capataz@roman-gonzalez.info";
        author = "Roman Gonzalez";
        homepage = "https://github.com/roman/Haskell-capataz#readme";
        url = "";
        synopsis = "OTP-like supervision trees in Haskell";
        description = "`capataz` enhances the reliability of your concurrent applications by offering\nsupervision of green threads that run in your application.\n\nAdvantages over standard library:\n\n* Links related long-living processes together under a common capataz\nsupervisor, with restart/shutdown order\n\n* Set restart strategies (Permanent, Transient, Temporary) on `IO`\nsub-routines on a granular level\n\n* Set restart strategies on a pool of long-living worker threads (AllForOne,\nOneForOne)\n\n* Complete telemetry on the sub-routine lifecycle of your application (start,\nerror, restarts, shutdown)";
        buildType = "Simple";
      };
      components = {
        "capataz" = {
          depends  = [
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.protolude
            hsPkgs.safe-exceptions
            hsPkgs.stm
            hsPkgs.teardown
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.uuid
            hsPkgs.vector
          ];
        };
        tests = {
          "capataz-test" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.capataz
              hsPkgs.data-default
              hsPkgs.pretty-show
              hsPkgs.protolude
              hsPkgs.safe-exceptions
              hsPkgs.stm
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-rerun
              hsPkgs.tasty-smallcheck
              hsPkgs.teardown
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.uuid
              hsPkgs.vector
            ];
          };
        };
      };
    }