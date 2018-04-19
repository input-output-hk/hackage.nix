{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "taskpool";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "";
        url = "";
        synopsis = "Manage pools of possibly interdependent tasks using STM and async";
        description = "A taskpool is a network of tasks (where connection indicates dependency),\nwhere up to N independent tasks at time may execute concurrently.";
        buildType = "Simple";
      };
      components = {
        taskpool = {
          depends  = [
            hsPkgs.base
            hsPkgs.fgl
            hsPkgs.async
            hsPkgs.stm
            hsPkgs.containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.transformers
              hsPkgs.fgl
              hsPkgs.containers
              hsPkgs.hspec
            ];
          };
        };
      };
    }