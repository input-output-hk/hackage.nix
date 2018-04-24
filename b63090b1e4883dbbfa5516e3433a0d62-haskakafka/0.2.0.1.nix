{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskakafka";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Thomas Dimson <tdimson@cs.stanford.edu>";
        author = "Thomas Dimson <tdimson@cs.stanford.edu>";
        homepage = "http://github.com/cosbynator/haskakafka";
        url = "";
        synopsis = "Kafka bindings for Haskell";
        description = "Use Apache Kafka in Haskell through the librdkafka\nC library. The library is preliminary but fully\nfunctional.";
        buildType = "Simple";
      };
      components = {
        haskakafka = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.unix
            hsPkgs.bytestring
          ];
          libs = [ pkgs.rdkafka ];
          build-tools = [ hsPkgs.c2hs ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.haskakafka
            ];
          };
        };
      };
    }