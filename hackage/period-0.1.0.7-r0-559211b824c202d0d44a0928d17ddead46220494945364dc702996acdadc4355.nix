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
        name = "period";
        version = "0.1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ankarakulov@gmail.com";
      author = "Oleksii Karakulov";
      homepage = "https://github.com/w3rs/period";
      url = "";
      synopsis = "Parse and format date periods, collapse and expand their text representations.";
      description = "Library and executable to parse and format date periods, collapse and expand, e.g. 2018 → 2018-01-01,2018-12-31 and backwards.";
      buildType = "Simple";
    };
    components = {
      "period" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "period" = {
          depends  = [
            (hsPkgs.period)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.ansi-wl-pprint)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.period)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.time)
          ];
        };
      };
    };
  }