{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GeoIp";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "siti@orcon.net.nz";
        author = "Stephen Cook";
        homepage = "";
        url = "";
        synopsis = "Pure bindings for the MaxMind IP database.";
        description = "GeoIp is a pure haskell binding to the MaxMind IP database.\nThe IP database contains information such as the approximate\nlongitude and latitude of an IP address.";
        buildType = "Simple";
      };
      components = {
        GeoIp = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-mmap
          ];
        };
      };
    }