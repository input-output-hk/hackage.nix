{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskakafka";
          version = "1.2.0";
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
        "haskakafka" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.temporary
            hsPkgs.unix
          ];
          pkgconfig = [
            pkgconfPkgs.rdkafka
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        exes = {
          "simple" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskakafka
              hsPkgs.bytestring
            ];
          };
          "basic" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskakafka
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.pretty-show
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.haskakafka
              hsPkgs.hspec
              hsPkgs.regex-posix
              hsPkgs.either-unwrap
            ];
          };
        };
      };
    }