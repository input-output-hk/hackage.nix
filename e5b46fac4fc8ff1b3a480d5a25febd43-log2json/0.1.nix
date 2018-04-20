{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "log2json";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "harold@hotelling.net";
        author = "harold@hotelling.net";
        homepage = "https://github.com/haroldl/log2json";
        url = "";
        synopsis = "Turn log file records into JSON.";
        description = "Take an httpd.conf style LogFormat string and parse\nlog files into JSON records.";
        buildType = "Simple";
      };
      components = {
        log2json = {};
        exes = {
          log2json = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.json
            ];
          };
        };
      };
    }