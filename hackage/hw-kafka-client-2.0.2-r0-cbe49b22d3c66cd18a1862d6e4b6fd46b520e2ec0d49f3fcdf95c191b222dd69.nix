{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hw-kafka-client";
        version = "2.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Alexey Raga <alexey.raga@gmail.com>";
      author = "Alexey Raga <alexey.raga@gmail.com>";
      homepage = "https://github.com/haskell-works/hw-kafka-client";
      url = "";
      synopsis = "Kafka bindings for Haskell";
      description = "Apache Kafka bindings backed by the librdkafka C library.\n\nFeatures include:\n\n* Consumer groups: auto-rebalancing consumers\n\n* Keyed and keyless messages producing/consuming\n\n* Batch producing messages";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
          (hsPkgs.unix)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
        libs = [ (pkgs."rdkafka") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "kafka-client-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.hw-kafka-client)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hw-kafka-client)
            (hsPkgs.monad-loops)
            (hsPkgs.hspec)
            (hsPkgs.regex-posix)
            (hsPkgs.either)
          ];
        };
        "integration-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hw-kafka-client)
            (hsPkgs.monad-loops)
            (hsPkgs.hspec)
            (hsPkgs.regex-posix)
            (hsPkgs.either)
          ];
        };
      };
    };
  }