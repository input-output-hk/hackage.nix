{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-logger-syslog";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "greg@gregweber.info";
        author = "Greg Weber";
        homepage = "https://github.com/docmunch/monad-logger-rsyslog";
        url = "";
        synopsis = "rsyslog output for monad-logger";
        description = "rsyslog output for monad-logger";
        buildType = "Simple";
      };
      components = {
        monad-logger-syslog = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-logger
            hsPkgs.fast-logger
            hsPkgs.hsyslog
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        tests = {
          smoke = {
            depends  = [
              hsPkgs.base
              hsPkgs.monad-logger
              hsPkgs.monad-logger-syslog
              hsPkgs.shelly
            ];
          };
        };
      };
    }