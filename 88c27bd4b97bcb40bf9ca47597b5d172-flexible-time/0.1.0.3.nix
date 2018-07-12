{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flexible-time";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "t.t.mc1192.sf@gmail.com";
        author = "tattsun";
        homepage = "https://github.com/tattsun/flexible-time";
        url = "";
        synopsis = "simple extension of Data.UnixTime.";
        description = "simple extension of Data.UnixTime.";
        buildType = "Simple";
      };
      components = {
        "flexible-time" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.unix-time
          ];
        };
      };
    }