{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "control-event";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas.DuBuisson@gmail.com";
        author = "Thomas DuBuisson";
        homepage = "";
        url = "";
        synopsis = "Event scheduling system.";
        description = "Allows scheduling and canceling of IO actions to be\nexecuted at a specified future time.";
        buildType = "Simple";
      };
      components = {
        "control-event" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.containers
            hsPkgs.stm
          ];
        };
      };
    }