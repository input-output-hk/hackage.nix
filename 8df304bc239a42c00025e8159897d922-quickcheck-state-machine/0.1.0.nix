{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickcheck-state-machine";
          version = "0.1.0";
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
        "quickcheck-state-machine" = {
          depends  = [
            hsPkgs.ansi-wl-pprint
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.parallel-io
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.stm
          ];
        };
        tests = {
          "quickcheck-state-machine-test" = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }