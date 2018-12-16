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
        name = "statsdi";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2017 Ilya Ostrovskiy";
      maintainer = "first-name@thenumber200-thewordproof.cc";
      author = "Ilya Ostrovskiy";
      homepage = "https://github.com/iostat/statsdi#readme";
      url = "";
      synopsis = "A lovely [Dog]StatsD implementation";
      description = "An implementation of DogStatsD for collecting and pushing metrics";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.dequeue)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.ether)
          (hsPkgs.transformers)
          (hsPkgs.transformers-lift)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "statsdi-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.statsdi)
            (hsPkgs.bytestring)
            (hsPkgs.stm)
            (hsPkgs.network)
            (hsPkgs.time)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }