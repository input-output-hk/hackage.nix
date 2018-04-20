{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "GeoIp";
          version = "0.3";
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
            hsPkgs.syb
          ];
        };
      };
    }