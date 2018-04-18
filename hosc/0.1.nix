{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hosc";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2007";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/f/269573/";
        url = "";
        synopsis = "Haskell Open Sound Control";
        description = "Haskell implementation of the Open Sound Control byte protocol";
        buildType = "Custom";
      };
      components = {
        hosc = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.network
            hsPkgs.time
          ];
        };
      };
    }