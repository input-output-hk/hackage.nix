{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alarmclock";
          version = "0.4.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) David Turner 2014";
        maintainer = "dave.c.turner@gmail.com";
        author = "David Turner";
        homepage = "https://bitbucket.org/davecturner/alarmclock";
        url = "";
        synopsis = "Wake up and perform an action at a certain time.";
        description = "Wake up and perform an action at a certain time.";
        buildType = "Simple";
      };
      components = {
        alarmclock = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.async
            hsPkgs.time
            hsPkgs.clock
            hsPkgs.unbounded-delays
          ];
        };
      };
    }