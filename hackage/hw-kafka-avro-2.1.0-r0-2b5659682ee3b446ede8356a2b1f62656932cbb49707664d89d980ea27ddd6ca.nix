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
        name = "hw-kafka-avro";
        version = "2.1.0";
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
      "library" = {
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
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.pure-zlib)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.wreq)
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
            (hsPkgs.http-client)
            (hsPkgs.hw-kafka-avro)
            (hsPkgs.mtl)
            (hsPkgs.pure-zlib)
            (hsPkgs.semigroups)
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
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.hw-kafka-avro)
            (hsPkgs.mtl)
            (hsPkgs.pure-zlib)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }