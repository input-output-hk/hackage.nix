{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hosc";
          version = "0.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2007";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/f/269573/";
        url = "";
        synopsis = "Haskell Open Sound Control";
        description = "Haskell implementation of the Open Sound Control byte protocol";
        buildType = "Simple";
      };
      components = {
        hosc = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.network
            hsPkgs.time
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
            ]
            else [ hsPkgs.base ]);
        };
      };
    }