{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hsc3";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2007";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/f/207949/";
        url = "";
        synopsis = "Haskell SuperCollider";
        description = "Haskell client for the SuperCollider synthesis server";
        buildType = "Custom";
      };
      components = {
        hsc3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.hosc
            hsPkgs.network
            hsPkgs.random
          ];
        };
      };
    }