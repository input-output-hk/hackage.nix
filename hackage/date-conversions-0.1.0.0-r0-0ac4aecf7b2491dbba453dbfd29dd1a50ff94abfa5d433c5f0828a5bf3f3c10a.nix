{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "date-conversions";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017";
      maintainer = "jclayton@thoughtbot.com";
      author = "Josh Clayton";
      homepage = "https://github.com/thoughtbot/date-conversions#readme";
      url = "";
      synopsis = "Date conversions";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.dates)
        ];
      };
      tests = {
        "date-conversions-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.date-conversions)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.time)
            (hsPkgs.dates)
          ];
        };
      };
    };
  }