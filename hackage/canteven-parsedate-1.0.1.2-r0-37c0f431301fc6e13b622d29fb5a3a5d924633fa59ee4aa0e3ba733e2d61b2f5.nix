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
        name = "canteven-parsedate";
        version = "1.0.1.2";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rowens@sumall.com, ababkin@sumall.com";
      author = "Rick Owens, Alex Babkin";
      homepage = "";
      url = "";
      synopsis = "Date / time parsing utilities that try to guess the date / time format.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "canteven-parsedate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.timezone-series)
          (hsPkgs.tz)
        ];
      };
      tests = {
        "test-parsedate" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.canteven-parsedate)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.timezone-series)
            (hsPkgs.tz)
          ];
        };
      };
    };
  }