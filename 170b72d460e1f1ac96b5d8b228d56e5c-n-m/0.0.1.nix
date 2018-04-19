{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3.0";
        identifier = {
          name = "n-m";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2008 Marco Túlio Gontijo e Silva <marcot@riseup.net>";
        maintainer = "Marco Túlio Gontijo e Silva <marcot@riseup.net>";
        author = "Marco Túlio Gontijo e Silva";
        homepage = "";
        url = "";
        synopsis = "Utility to call iwconfig.";
        description = "This program choses between the available open wireless networks and tries to\nconnect to them using DHCP.";
        buildType = "Simple";
      };
      components = {
        n-m = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          n-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.HSH
            ];
          };
        };
      };
    }