{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sleep";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "";
        url = "";
        synopsis = "zZzzZz";
        description = "";
        buildType = "Simple";
      };
      components = {
        sleep = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
        exes = {
          sleep = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
            ];
          };
        };
      };
    }