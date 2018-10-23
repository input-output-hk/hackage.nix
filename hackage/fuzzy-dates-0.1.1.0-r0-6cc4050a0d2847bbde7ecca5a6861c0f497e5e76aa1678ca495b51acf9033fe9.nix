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
        name = "fuzzy-dates";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Reed Oei";
      maintainer = "oei.reed@gmail.com";
      author = "Reed Oei";
      homepage = "https://github.com/ReedOei/fuzzy-dates#readme";
      url = "";
      synopsis = "Libary for parsing dates in strings in varied formats.";
      description = "Please see the README on GitHub at <https://github.com/ReedOei/fuzzy-dates#readme>";
      buildType = "Simple";
    };
    components = {
      "fuzzy-dates" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hourglass)
          (hsPkgs.hspec)
          (hsPkgs.lens)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "fuzzy-dates-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fuzzy-dates)
            (hsPkgs.hourglass)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.parsec)
          ];
        };
      };
      tests = {
        "fuzzy-dates-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fuzzy-dates)
            (hsPkgs.hourglass)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }