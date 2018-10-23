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
        name = "arbor-lru-cache";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "2018 Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/arbor-lru-cache#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/arbor/arbor-lru-cache#readme>";
      buildType = "Simple";
    };
    components = {
      "arbor-lru-cache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "arbor-lru-cache-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.stm)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.arbor-lru-cache)
          ];
        };
      };
    };
  }