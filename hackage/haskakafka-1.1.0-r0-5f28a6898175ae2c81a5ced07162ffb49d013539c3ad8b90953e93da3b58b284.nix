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
        name = "haskakafka";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Thomas Dimson <tdimson@cs.stanford.edu>";
      author = "Thomas Dimson <tdimson@cs.stanford.edu>";
      homepage = "http://github.com/cosbynator/haskakafka";
      url = "";
      synopsis = "Kafka bindings for Haskell";
      description = "Apache Kafka bindings backed by the librdkafka\nC library. This implies full consumer and producer\nsupport for Kafka 0.9.x.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
      exes = {
        "simple" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskakafka)
            (hsPkgs.bytestring)
          ];
        };
        "basic" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskakafka)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.pretty-show)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
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