{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickcheck-state-machine";
          version = "0.3.1";
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
            hsPkgs.async
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.quickcheck-with-counterexamples
            hsPkgs.random
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.th-abstraction
          ];
        };
        tests = {
          quickcheck-state-machine-test = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }