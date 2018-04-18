{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "usb-id-database";
          version = "0.4.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009–2010 Roel van Dijk <vandijk.roel@gmail.com>";
        maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
        author = "Roel van Dijk <vandijk.roel@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A database of USB identifiers";
        description = "Functions to find the names associated with various identifiers from the USB\nspecification. This is useful if you want to display full human-readable names\ninstead of cryptic numeric codes.";
        buildType = "Simple";
      };
      components = {
        usb-id-database = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.containers-unicode-symbols
            hsPkgs.parsimony
          ];
        };
        exes = { example = {}; };
      };
    }