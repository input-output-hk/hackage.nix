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
        name = "hats";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Patrik Sandahl";
      maintainer = "patrik.sandahl@gmail.com";
      author = "Patrik Sandahl";
      homepage = "https://github.com/kosmoskatten/hats";
      url = "";
      synopsis = "Haskell client for the NATS messaging system";
      description = "A Haskell client for the NATS messaging system. To get started,\nsee the documentation for the \"Network.Nats\" module. Or see the\nexample programs in the example directory.\n\nA general introduction to NATS can be found at <https://nats.io>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.connection)
          (hsPkgs.deepseq)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "hats-examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hats)
          ];
        };
      };
      tests = {
        "hats-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.hats)
            (hsPkgs.HUnit)
            (hsPkgs.process)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "hats-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.hats)
            (hsPkgs.random)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }