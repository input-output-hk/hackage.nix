{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "rhine";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "maths@manuelbaerenz.de";
        author = "Manuel Bärenz";
        homepage = "";
        url = "";
        synopsis = "Functional Reactive Programming with type-level clocks";
        description = "Rhine is a library for synchronous and asynchronous Functional Reactive Programming (FRP).\nIt separates the aspects of clocking, scheduling and resampling\nfrom each other, and ensures clock-safety on the type level.\nSignal processing units can be annotated by clocks,\nwhich hold the information when data will be\ninput, processed and output.\nDifferent components of the signal network\nwill become active at different times, or work\nat different rates.\nTo schedule the components and allow them to communicate,\nseveral standard scheduling and resampling solutions are implemented.\nOwn schedules and resampling buffers can be implemented in a reusable fashion.\nA (synchronous) program outputting \"Hello World!\" every tenth of a second looks like this:\n@flow \$ arrMSync_ (putStrLn \"Hello World!\") @@ (waitClock :: Millisecond 100)@";
        buildType = "Simple";
      };
      components = {
        "rhine" = {
          depends  = [
            hsPkgs.base
            hsPkgs.dunai
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.free
            hsPkgs.containers
          ];
        };
        exes = {
          "HelloWorld" = {
            depends  = [
              hsPkgs.base
              hsPkgs.rhine
            ];
          };
          "Demonstration" = {
            depends  = [
              hsPkgs.base
              hsPkgs.rhine
            ];
          };
        };
      };
    }