{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "relative-date";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "";
      url = "";
      synopsis = "Durations and generalized time parsing";
      description = "Relative-date provides two modules.  Data.Duration gives\nfunctions for the creation of durations of time, represented\nas functions from DateTime to DateTime.  Data.DateTime.Parser\npresents miscellaneous parsers for handling time descriptions\nof varying levels of detail.  The library also can parse\ndescriptions of repeated times, returning a (possibly infinite)\nlist of DateTimes.";
      buildType = "Simple";
    };
    components = {
      "relative-date" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.concatenative)
          (hsPkgs.datetime)
          (hsPkgs.parsec)
          (hsPkgs.time)
        ];
      };
    };
  }