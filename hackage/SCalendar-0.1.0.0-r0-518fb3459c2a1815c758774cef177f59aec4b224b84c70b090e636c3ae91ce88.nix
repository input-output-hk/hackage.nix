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
        name = "SCalendar";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "sebastian0092@gmail.com";
      author = "Sebastian Pulido Gomez";
      homepage = "https://github.com/sebasHack/SCalendar";
      url = "";
      synopsis = "Library for managing calendars and resource availability.";
      description = "This is a library for handling calendars and resource availability based on the \"top-nodes algorithm\" and set operations.";
      buildType = "Simple";
    };
    components = {
      "SCalendar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.text)
        ];
      };
    };
  }