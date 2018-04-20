{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "async-timer";
          version = "0.1.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016-2018 Moritz Clasmeier";
        maintainer = "mtesseract@silverratio.net";
        author = "Moritz Clasmeier";
        homepage = "https://github.com/mtesseract/async-timer#readme";
        url = "";
        synopsis = "Provides API for timer based execution of IO actions";
        description = "This is a lightweight package built on top of the async package\nproviding easy to use periodic timers. This can be used for executing\nIO actions periodically.";
        buildType = "Simple";
      };
      components = {
        async-timer = {
          depends  = [
            hsPkgs.base
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.safe-exceptions
            hsPkgs.transformers-base
          ];
        };
        tests = {
          async-timer-test = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.async-timer
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.lifted-async
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }