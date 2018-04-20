{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fluent-logger";
          version = "0.2.3.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (c) 2012, Noriyuki OHKAWA";
        maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A structured logger for Fluentd (Haskell)";
        description = "A structured logger for Fluentd (Haskell) <http://fluentd.org/>";
        buildType = "Simple";
      };
      components = {
        fluent-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.network
            hsPkgs.network-socket-options
            hsPkgs.time
            hsPkgs.cereal
            hsPkgs.messagepack
            hsPkgs.stm
            hsPkgs.random
            hsPkgs.vector
            hsPkgs.containers
          ];
        };
        tests = {
          fluent-logger-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.fluent-logger
              hsPkgs.text
              hsPkgs.network
              hsPkgs.messagepack
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.hspec
              hsPkgs.attoparsec
              hsPkgs.time
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.exceptions
              hsPkgs.containers
            ];
          };
        };
        benchmarks = {
          fluent-logger-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.fluent-logger
              hsPkgs.criterion
            ];
          };
        };
      };
    }