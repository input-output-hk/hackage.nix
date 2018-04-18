{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskakafka";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Thomas Dimson <tdimson@cs.stanford.edu>";
        author = "Thomas Dimson <tdimson@cs.stanford.edu>";
        homepage = "http://github.com/cosbynator/haskafka";
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