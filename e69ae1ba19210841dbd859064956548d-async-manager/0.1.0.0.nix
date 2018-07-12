{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "async-manager";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "http://github.com/jfischoff/async-manager";
        url = "";
        synopsis = "A thread manager for async";
        description = "Cleanup and kill async threads.";
        buildType = "Simple";
      };
      components = {
        "async-manager" = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.stm
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          "thread-clean-up-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }