{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "iCalendar";
          version = "0.4.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Tingtun";
        maintainer = "cra@cra.no";
        author = "Christian Rødli Amble";
        homepage = "http://github.com/chrra/iCalendar";
        url = "";
        synopsis = "iCalendar data types, parser, and printer.";
        description = "Data definitions, parsing and printing of the iCalendar\nformat (RFC5545).";
        buildType = "Simple";
      };
      components = {
        iCalendar = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.data-default
            hsPkgs.case-insensitive
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.mime
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.base64-bytestring
          ] ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [ hsPkgs.network ]);
        };
      };
    }