{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timeconsole";
          version = "0.1.0.2";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "https://github.com/xpika/Time-Console";
        url = "";
        synopsis = "time each line of terminal output";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          timeconsole = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.time
            ];
          };
        };
      };
    }