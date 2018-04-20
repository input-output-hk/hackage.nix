{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "iCalendar";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Tingtun";
        maintainer = "cra+code@cra.no";
        author = "Christian Rødli Amble";
        homepage = "http://github.com/tingtun/iCalendar";
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
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.mime
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.base64-bytestring
          ];
        };
      };
    }