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
        name = "general-games";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017 Christopher A. Gorski";
      maintainer = "cgorski@cgorski.org";
      author = "Christopher A. Gorski";
      homepage = "https://github.com/cgorski/general-games";
      url = "";
      synopsis = "Library supporting simulation of a number of games";
      description = "Library providing framework for simulating outcomes of a variety\nof games, including Poker.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.permutation)
          (hsPkgs.containers)
          (hsPkgs.MonadRandom)
        ];
      };
      tests = {
        "general-games-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.general-games)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }