{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wrecker";
          version = "1.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 skedge.me";
        maintainer = "jose.zap@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/lorenzo/wrecker#readme";
        url = "";
        synopsis = "An HTTP Performance Benchmarker";
        description = "'wrecker' is a library and executable for creating HTTP benchmarks. It is designed for\nbenchmarking a series of dependent requests.\n'wrecker' includes a wrapped version of the `wreq` Session API\n, mainly through 'Network.Wreq.Wrecker'.\nSee <https://github.com/lorenzo/wrecker#readme> for more information.";
        buildType = "Simple";
      };
      components = {
        "wrecker" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.ansi-terminal
            hsPkgs.ansigraph
            hsPkgs.array
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.clock
            hsPkgs.clock-extras
            hsPkgs.connection
            hsPkgs.containers
            hsPkgs.cookie
            hsPkgs.cryptonite
            hsPkgs.data-default
            hsPkgs.data-default-class
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.immortal
            hsPkgs.memory
            hsPkgs.mime-types
            hsPkgs.network
            hsPkgs.network-uri
            hsPkgs.next-ref
            hsPkgs.optparse-applicative
            hsPkgs.random
            hsPkgs.statistics
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.streaming-commons
            hsPkgs.tabular
            hsPkgs.text
            hsPkgs.threads
            hsPkgs.threads-extras
            hsPkgs.time
            hsPkgs.tls
            hsPkgs.transformers
            hsPkgs.unagi-chan
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vty
            hsPkgs.wreq
            hsPkgs.authenticate-oauth
            hsPkgs.threads-extras
            hsPkgs.tdigest
          ];
        };
        exes = {
          "wreck" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wrecker
              hsPkgs.markdown-unlit
              hsPkgs.optparse-applicative
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.wreq
              hsPkgs.lens
            ];
          };
          "example-server" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wrecker
              hsPkgs.scotty
              hsPkgs.aeson-qq
              hsPkgs.warp
              hsPkgs.markdown-unlit
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.immortal
              hsPkgs.next-ref
              hsPkgs.wai
              hsPkgs.network
              hsPkgs.transformers
            ];
          };
          "example-client" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wrecker
              hsPkgs.wreq
              hsPkgs.markdown-unlit
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.http-client
              hsPkgs.connection
            ];
          };
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wrecker
              hsPkgs.scotty
              hsPkgs.aeson-qq
              hsPkgs.warp
              hsPkgs.wreq
              hsPkgs.markdown-unlit
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.http-client
              hsPkgs.connection
              hsPkgs.immortal
              hsPkgs.next-ref
              hsPkgs.wai
              hsPkgs.network
              hsPkgs.connection
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          "wrecker-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wrecker
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.scotty
              hsPkgs.aeson-qq
              hsPkgs.warp
              hsPkgs.wreq
              hsPkgs.markdown-unlit
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.http-client
              hsPkgs.unordered-containers
              hsPkgs.wai
              hsPkgs.network
              hsPkgs.immortal
              hsPkgs.next-ref
              hsPkgs.connection
              hsPkgs.transformers
            ];
          };
        };
      };
    }