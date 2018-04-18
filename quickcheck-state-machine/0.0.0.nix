{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickcheck-state-machine";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2017, ATS Advanced Telematic Systems GmbH";
        maintainer = "Stevan Andjelkovic <stevan@advancedtelematic.com>";
        author = "Stevan Andjelkovic";
        homepage = "https://github.com/advancedtelematic/quickcheck-state-machine#readme";
        url = "";
        synopsis = "Test monadic programs using state machine based models";
        description = "See README at <https://github.com/advancedtelematic/quickcheck-state-machine#readme>";
        buildType = "Simple";
      };
      components = {
        quickcheck-state-machine = {
          depends  = [
            hsPkgs.ansi-wl-pprint
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.parallel-io
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.singletons
            hsPkgs.stm
          ];
        };
        tests = {
          quickcheck-state-machine-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-state-machine
              hsPkgs.random
            ];
          };
        };
      };
    }