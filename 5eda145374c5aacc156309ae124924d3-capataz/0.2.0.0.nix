{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "capataz";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "© 2018 Roman Gonzalez";
        maintainer = "open-source@roman-gonzalez.info";
        author = "Roman Gonzalez";
        homepage = "https://github.com/roman/Haskell-capataz#readme";
        url = "";
        synopsis = "OTP-like supervision trees in Haskell";
        description = "`capataz` enhances the reliability of your concurrent applications by offering\nsupervision of green threads that run in your application.\n\nAdvantages over standard library:\n\n* Links related long-living processes together under a common capataz\nsupervisor, with restart/shutdown order\n\n* Set restart strategies (Permanent, Transient, Temporary) on `IO`\nsub-routines on a granular level\n\n* Set restart strategies on a pool of long-living worker threads (AllForOne,\nOneForOne)\n\n* Complete telemetry on the sub-routine lifecycle of your application (start,\nerror, restarts, shutdown)";
        buildType = "Simple";
      };
      components = {
        capataz = {
          depends  = [
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.pretty-show
            hsPkgs.prettyprinter
            hsPkgs.rio
            hsPkgs.teardown
            hsPkgs.time
            hsPkgs.uuid
          ];
        };
        tests = {
          capataz-test = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.capataz
              hsPkgs.pretty-show
              hsPkgs.prettyprinter
              hsPkgs.rio
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-smallcheck
              hsPkgs.teardown
              hsPkgs.time
              hsPkgs.uuid
            ];
          };
        };
      };
    }