{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "prometheus";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2016";
      maintainer = "luke@hoersten.org, opensource@bitnomial.com";
      author = "Luke Hoersten";
      homepage = "http://github.com/LukeHoersten/prometheus#readme";
      url = "";
      synopsis = "Prometheus Haskell Client";
      description = "[Prometheus Haskell Client]\n\nA simple and modern, type safe, idiomatic Haskell client for\n<http://prometheus.io Prometheus> monitoring. Specifically there is no\nuse of unsafe IO or manual ByteString construction from lists of\nbytes. Batteries-included web server.\n\n[Usage Example]\n\n> module Example where\n>\n> import           Control.Monad.IO.Class                         (liftIO)\n> import           System.Metrics.Prometheus.Concurrent.Http      (serveHttpTextMetricsT)\n> import           System.Metrics.Prometheus.Concurrent.RegistryT\n> import           System.Metrics.Prometheus.Metric.Counter       (inc)\n> import           System.Metrics.Prometheus.MetricId\n>\n> main :: IO ()\n> main = runRegistryT \$ do\n>     -- Labels can be defined as lists or added to an empty label set\n>     connectSuccessGauge <- registerGauge \"example_connections\" (fromList [(\"login\", \"success\")])\n>     connectFailureGauge <- registerGauge \"example_connections\" (addLabel \"login\" \"failure\" mempty)\n>     connectCounter <- registerCounter \"example_connection_total\" mempty\n>     latencyHistogram <- registerHistogram \"example_round_trip_latency_ms\" mempty [10, 20..100]\n>\n>     liftIO \$ inc connectCounter -- increment a counter\n>\n>     -- [...] pass metric handles to the rest of the app\n>\n>     serveHttpTextMetricsT 8080 [\"metrics\"] -- http://localhost:8080/metric server\n>\n\n[Advanced Usage]\n\nA `Registry` and `StateT`-based `RegistryT` are available for unit testing or generating lists\nof `[IO a]` actions that can be `sequenced` and returned from pure code to be applied.";
      buildType = "Simple";
    };
    components = {
      "prometheus" = {
        depends  = [
          (hsPkgs.atomic-primops)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.warp)
        ];
      };
    };
  }