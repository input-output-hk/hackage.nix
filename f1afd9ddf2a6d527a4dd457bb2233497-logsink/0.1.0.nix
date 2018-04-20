{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logsink";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) Zalora South East Asia Pte. Ltd";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A logging framework for Haskell";
        description = "A logging framework for Haskell";
        buildType = "Simple";
      };
      components = {
        logsink = {
          depends  = [
            hsPkgs.base
            hsPkgs.logging-facade
            hsPkgs.hsyslog
            hsPkgs.time
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.logsink
              hsPkgs.logging-facade
              hsPkgs.hspec
            ];
          };
        };
      };
    }