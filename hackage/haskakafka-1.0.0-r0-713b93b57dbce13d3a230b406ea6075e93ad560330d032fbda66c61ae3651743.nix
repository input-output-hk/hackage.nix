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
        name = "haskakafka";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Thomas Dimson <tdimson@cs.stanford.edu>";
      author = "Thomas Dimson <tdimson@cs.stanford.edu>";
      homepage = "http://github.com/cosbynator/haskakafka";
      url = "";
      synopsis = "Kafka bindings for Haskell";
      description = "Apache Kafka bindings backed by the librdkafka\nC library. This implies full consumer and producer\nsupport for Kafka 0.8.x.";
      buildType = "Simple";
    };
    components = {
      "haskakafka" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.temporary)
          (hsPkgs.unix)
        ];
        libs = [ (pkgs."rdkafka") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.haskakafka)
            (hsPkgs.hspec)
            (hsPkgs.regex-posix)
            (hsPkgs.either-unwrap)
          ];
        };
      };
    };
  }