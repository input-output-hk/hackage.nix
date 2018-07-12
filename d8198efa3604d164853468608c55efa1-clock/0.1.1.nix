{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "clock";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Cetin Sert";
        maintainer = "Cetin Sert <cetin@sertcom.de>";
        author = "Cetin Sert <cetin@sertcom.de>";
        homepage = "http://sert.homedns.org/hs/clock/";
        url = "";
        synopsis = "low-level binding to time.h: clock_gettime and clock_getres";
        description = "low-level binding to time.h: clock_gettime and clock_getres.\nclock_settime will be added in later versions.";
        buildType = "Simple";
      };
      components = {
        "clock" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }