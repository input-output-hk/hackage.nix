{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "time-io-access";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "bheklilr2@gmail.com";
        author = "Aaron Stevens";
        homepage = "";
        url = "";
        synopsis = "IO Access for time";
        description = "";
        buildType = "Simple";
      };
      components = {
        time-io-access = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.base-io-access
          ];
        };
      };
    }