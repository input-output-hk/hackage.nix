{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-kafka-conduit"; version = "1.1.2"; };
      license = "MIT";
      copyright = "Alexey Raga";
      maintainer = "Alexey Raga <alexey.raga@gmail.com>";
      author = "Alexey Raga <alexey.raga@gmail.com>";
      homepage = "https://github.com/haskell-works/hw-kafka-client-conduit";
      url = "";
      synopsis = "Conduit bindings for kafka-client";
      description = "Conduit bindings for hw-kafka-client";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.exceptions)
          (hsPkgs.hw-kafka-client)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "kafka-conduit-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.resourcet)
            (hsPkgs.hw-kafka-conduit)
            ];
          };
        };
      tests = {
        "kafka-client-conduit-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hw-kafka-conduit)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.extra)
            (hsPkgs.hspec)
            (hsPkgs.hw-kafka-client)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }