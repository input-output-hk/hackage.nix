{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-suite = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "time-recurrence"; version = "0.5.2"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.data-ordlist)
          (hsPkgs.mtl)
          ];
        };
      tests = {
        "test-time-recurrence" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.data-ordlist)
            (hsPkgs.mtl)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.old-locale)
            ];
          };
        };
      };
    }