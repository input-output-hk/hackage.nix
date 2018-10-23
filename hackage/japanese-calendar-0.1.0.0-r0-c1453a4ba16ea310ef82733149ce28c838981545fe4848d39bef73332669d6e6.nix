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
        name = "japanese-calendar";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Daishi Nakajima";
      maintainer = "nakaji.dayo@gmail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/japanese-calendar#readme";
      url = "";
      synopsis = "Data type of Japanese Calendar (Wareki).";
      description = "";
      buildType = "Simple";
    };
    components = {
      "japanese-calendar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
      tests = {
        "japanese-calendar-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.japanese-calendar)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.time)
          ];
        };
      };
    };
  }