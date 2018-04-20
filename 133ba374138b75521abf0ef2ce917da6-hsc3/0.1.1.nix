{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hsc3";
          version = "0.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2007";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/f/207949/";
        url = "";
        synopsis = "Haskell SuperCollider";
        description = "Haskell client for the SuperCollider synthesis server";
        buildType = "Simple";
      };
      components = {
        hsc3 = {
          depends  = [
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.hosc
            hsPkgs.network
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.random
            ]
            else [ hsPkgs.base ]);
        };
      };
    }