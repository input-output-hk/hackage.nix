{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "leapseconds-announced";
          version = "2015";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Buckwalter 2009-2015";
        maintainer = "bjorn@buckwalter.se";
        author = "Bjorn Buckwalter";
        homepage = "";
        url = "";
        synopsis = "Leap seconds announced at library release time.";
        description = "Provides an easy to use static 'Data.Time.Clock.TAI.LeapSecondTable'\nwith the leap seconds announced at library release time.";
        buildType = "Simple";
      };
      components = {
        leapseconds-announced = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }