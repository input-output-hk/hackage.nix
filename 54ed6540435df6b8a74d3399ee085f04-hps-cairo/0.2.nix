{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hps-cairo";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2010";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hps-cairo";
        url = "";
        synopsis = "Cairo rendering for the haskell postscript library";
        description = "Cairo rendering for the haskell postscript library";
        buildType = "Simple";
      };
      components = {
        hps-cairo = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.gtk
            hsPkgs.hps
          ];
        };
      };
    }