{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hw-kafka-avro";
        version = "1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alexey Raga";
      maintainer = "alexey.raga@gmail.com";
      author = "Alexey Raga";
      homepage = "https://github.com/haskell-works/hw-kafka-avro#readme";
      url = "";
      synopsis = "Avro support for Kafka infrastructure";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-kafka-avro" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.avro)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cache)
          (hsPkgs.containers)
          (hsPkgs.errors)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.pure-zlib)
          (hsPkgs.semigroups)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "kafka-avro-example" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.avro)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cache)
            (hsPkgs.containers)
            (hsPkgs.errors)
            (hsPkgs.hashable)
            (hsPkgs.hw-kafka-avro)
            (hsPkgs.http-client)
            (hsPkgs.mtl)
            (hsPkgs.pure-zlib)
            (hsPkgs.semigroups)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "kafka-avro-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.avro)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cache)
            (hsPkgs.containers)
            (hsPkgs.errors)
            (hsPkgs.hashable)
            (hsPkgs.hw-kafka-avro)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.mtl)
            (hsPkgs.pure-zlib)
            (hsPkgs.semigroups)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }