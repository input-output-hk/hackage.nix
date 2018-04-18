{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wrecker";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 skedge.me";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/skedgeme/wrecker#readme";
        url = "";
        synopsis = "A HTTP Performance Benchmarker";
        description = "'wrecker' is a library for creating HTTP benchmarks. It is designed for\nbenchmarking a series of HTTP request were the output of previous requests\nare used as inputs to the next request. This is useful for complex API\nprofiling situations.\n'wrecker' does not provide any mechanism for making HTTP calls. It works\nwith any HTTP client that produces a 'HttpException' during failure (so\nhttp-client and wreq will work out of the box).\nSee the documentation for examples of how to use 'wrecker' with\nbenchmarking scripts.";
        buildType = "Simple";
      };
      components = {
        wrecker = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.statistics
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.unix
            hsPkgs.ansigraph
            hsPkgs.time
            hsPkgs.clock
            hsPkgs.text
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.tabular
            hsPkgs.deepseq
            hsPkgs.unordered-containers
            hsPkgs.threads
            hsPkgs.vty
            hsPkgs.threads-extras
            hsPkgs.clock-extras
            hsPkgs.optparse-applicative
            hsPkgs.ansi-terminal
            hsPkgs.unagi-chan
            hsPkgs.next-ref
            hsPkgs.immortal
          ];
        };
        exes = {
          example-server = {
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
            ];
          };
          example-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.wrecker
              hsPkgs.wreq
              hsPkgs.markdown-unlit
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.http-client
            ];
          };
          example = {
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
            ];
          };
        };
        tests = {
          wrecker-test = {
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
            ];
          };
        };
      };
    }