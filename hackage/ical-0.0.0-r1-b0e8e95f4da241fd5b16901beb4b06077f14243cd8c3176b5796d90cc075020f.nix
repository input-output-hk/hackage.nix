{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ical";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://github.com/chrisdone/ical#readme";
      url = "";
      synopsis = "iCalendar format parser and org-mode converter.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "ical" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "ical-org" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ical)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "ical-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ical)
          ];
        };
      };
    };
  }