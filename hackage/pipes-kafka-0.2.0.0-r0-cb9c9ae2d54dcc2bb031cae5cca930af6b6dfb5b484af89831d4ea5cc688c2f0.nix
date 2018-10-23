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
        name = "pipes-kafka";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ben@perurbis.com";
      author = "Ben Ford";
      homepage = "https://github.com/boothead/pipes-kafka";
      url = "";
      synopsis = "Kafka in the Pipes ecosystem";
      description = "";
      buildType = "Simple";
    };
    components = {
      "pipes-kafka" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.hw-kafka-client)
          (hsPkgs.monad-logger)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }