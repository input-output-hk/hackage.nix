{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logger-thread";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Joe9";
        maintainer = "joe9mail@gmail.com";
        author = "joe9";
        homepage = "https://github.com/joe9/logger-thread#readme";
        url = "";
        synopsis = "Run FastLogger in a thread and direct all queued messages to it.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "logger-thread" = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.fast-logger
            hsPkgs.safe-exceptions
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          "logger-thread-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.logger-thread
              hsPkgs.protolude
              hsPkgs.stm
            ];
          };
        };
      };
    }