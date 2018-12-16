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
        name = "wrecker";
        version = "1.3.1.0";
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
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.ansigraph)
          (hsPkgs.array)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.clock)
          (hsPkgs.clock-extras)
          (hsPkgs.connection)
          (hsPkgs.containers)
          (hsPkgs.cookie)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.immortal)
          (hsPkgs.memory)
          (hsPkgs.mime-types)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.next-ref)
          (hsPkgs.optparse-applicative)
          (hsPkgs.random)
          (hsPkgs.statistics)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.streaming-commons)
          (hsPkgs.tabular)
          (hsPkgs.tdigest)
          (hsPkgs.text)
          (hsPkgs.threads)
          (hsPkgs.threads-extras)
          (hsPkgs.time)
          (hsPkgs.tls)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vty)
          (hsPkgs.wreq)
        ];
      };
      exes = {
        "wreck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.lens)
            (hsPkgs.markdown-unlit)
            (hsPkgs.optparse-applicative)
            (hsPkgs.transformers)
            (hsPkgs.wrecker)
            (hsPkgs.wreq)
          ];
        };
      };
    };
  }