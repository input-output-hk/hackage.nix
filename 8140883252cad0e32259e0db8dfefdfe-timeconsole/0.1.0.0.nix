{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timeconsole";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "w@xy30.com";
        author = "Alan Hawkins";
        homepage = "";
        url = "";
        synopsis = "Time commands by lines of STDOUT";
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