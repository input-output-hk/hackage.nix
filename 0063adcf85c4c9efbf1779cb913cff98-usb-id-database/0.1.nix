{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "usb-id-database";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Roel van Dijk";
        maintainer = "vandijk.roel@gmail.com";
        author = "Roel van Dijk";
        homepage = "";
        url = "";
        synopsis = "A database of USB identifiers";
        description = "Functions to find the names associated with numerical vendor\nidentifiers.";
        buildType = "Simple";
      };
      components = {
        usb-id-database = {
          depends  = [
            hsPkgs.base
            hsPkgs.bimap
            hsPkgs.bytestring
            hsPkgs.download
          ];
        };
      };
    }