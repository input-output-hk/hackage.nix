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
        name = "periodic";
        version = "0.1.0.0";
      };
      license = "ISC";
      copyright = "2016 Position Development LLC";
      maintainer = "workers@positiondev.com";
      author = "Daniel Patterson";
      homepage = "https://github.com/positiondev/periodic";
      url = "";
      synopsis = "A reliable at-least-once periodic job scheduler backed by redis.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "periodic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.cereal)
          (hsPkgs.hedis)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.cereal)
            (hsPkgs.hedis)
            (hsPkgs.periodic)
          ];
        };
      };
      tests = {
        "periodic-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.hedis)
            (hsPkgs.hspec)
            (hsPkgs.cereal)
          ];
        };
      };
    };
  }