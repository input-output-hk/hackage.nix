{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ip2location";
          version = "8.0.3";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "sales@ip2location.com";
        author = "IP2Location";
        homepage = "http://www.ip2location.com";
        url = "";
        synopsis = "IP2Location Haskell package for IP geolocation.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ip2location" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.iproute
          ];
        };
      };
    }