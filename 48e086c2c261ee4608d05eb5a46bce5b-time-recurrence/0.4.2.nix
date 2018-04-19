{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-suite = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "time-recurrence";
          version = "0.4.2";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "hellertime@gmail.com";
        author = "Chris Heller";
        homepage = "http://github.com/hellertime/time-recurrence";
        url = "";
        synopsis = "Generate recurring dates.";
        description = "time-recurrence is a library for generating\nrecurring dates.\nIt is based on the iCalendar spec (RFC 5545).\nHowever it makes no attempt to strictly follow\nthe spec.";
        buildType = "Simple";
      };
      components = {
        time-recurrence = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.data-ordlist
            hsPkgs.mtl
          ];
        };
        tests = {
          test-time-recurrence = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.old-locale
            ];
          };
        };
      };
    }