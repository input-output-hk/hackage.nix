{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prometheus-effect"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "https://github.com/ocharles/prometheus-effect";
      url = "";
      synopsis = "Instrument applications with metrics and publish/push to Prometheus";
      description = "[Prometheus](https://prometheus.io) is an open-source systems monitoring and\nalerting toolkit originally built at SoundCloud. Since its inception in 2012,\nmany companies and organizations have adopted Prometheus, and the project has a\nvery active developer and user community. It is now a standalone open source\nproject and maintained independently of any company. To emphasize this and\nclarify the project's governance structure, Prometheus joined the Cloud Native\nComputing Foundation in 2016 as the second hosted project after Kubernetes.\n\nThis library provides a Haskell client to Prometheus. It supports:\n\n* The metric types __counter__, __gauge__ and __histogram__.\n* Publishing metrics over HTTP (via WAI middleware).\n* Pushing metrics to the Prometheus push gateway.\n* Labels, along with dynamic labels.\n* Instrumentation, both for internal Prometheus monitoring and GHC statistics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.retry)
          (hsPkgs.safe-exceptions)
          (hsPkgs.streaming)
          (hsPkgs.streaming-wai)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-utils)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.wai)
          ];
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.warp)
            (hsPkgs.prometheus-effect)
            (hsPkgs.http-types)
            (hsPkgs.wai)
            (hsPkgs.random)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "weight" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.weigh)
            (hsPkgs.prometheus-effect)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.prometheus-effect)
            (hsPkgs.text)
            ];
          };
        };
      };
    }