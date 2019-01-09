{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "time-recurrence"; version = "0.2"; };
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
        depends = [ (hsPkgs.base) (hsPkgs.time) (hsPkgs.data-ordlist) ];
        };
      };
    }