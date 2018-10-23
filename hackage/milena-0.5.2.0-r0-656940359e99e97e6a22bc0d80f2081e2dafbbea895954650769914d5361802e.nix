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
        name = "milena";
        version = "0.5.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014, Tyler Holien";
      maintainer = "adam@adamflott.com";
      author = "Tyler Holien";
      homepage = "https://github.com/adamflott/milena.git#readme";
      url = "";
      synopsis = "A Kafka client for Haskell.";
      description = "A Kafka client for Haskell.\nThe protocol module is stable (the only changes will be to support changes in the Kafka protocol). The API is functional but subject to change.";
      buildType = "Simple";
    };
    components = {
      "milena" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.digest)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.murmur-hash)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.resource-pool)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.zlib)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.milena)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.semigroups)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }