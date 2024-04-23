{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prometheus"; version = "2.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2016-2019";
      maintainer = "luke@bitnomial.com, opensource@bitnomial.com";
      author = "Luke Hoersten";
      homepage = "http://github.com/bitnomial/prometheus";
      url = "";
      synopsis = "Prometheus Haskell Client";
      description = "[Prometheus Haskell Client]\n\nA simple and modern, type safe, performance focused, idiomatic Haskell client\nfor <http://prometheus.io Prometheus> monitoring. Specifically there is no\nuse of unsafe IO or manual ByteString construction from lists of\nbytes. Batteries-included web server.\n\nA key design element of this library is that the RegistryT monad transformer\nis only required for registering new time series. Once the time series is\nregistered, new data samples may just be added in the IO monad.\n\nNote: Version 0.* supports Prometheus v1.0 and version 2.* supports Prometheus v2.0.\n\n[Usage Example]\n\n> module Example where\n>\n> import           Control.Monad.IO.Class                         (liftIO)\n> import           System.Metrics.Prometheus.Http.Scrape          (serveMetricsT)\n> import           System.Metrics.Prometheus.Concurrent.RegistryT\n> import           System.Metrics.Prometheus.Metric.Counter       (inc)\n> import           System.Metrics.Prometheus.MetricId\n>\n> main :: IO ()\n> main = runRegistryT $ do\n>     -- Labels can be defined as lists or added to an empty label set\n>     connectSuccessGauge <- registerGauge \"example_connections\" (fromList [(\"login\", \"success\")])\n>     connectFailureGauge <- registerGauge \"example_connections\" (addLabel \"login\" \"failure\" mempty)\n>     connectCounter <- registerCounter \"example_connection_total\" mempty\n>     latencyHistogram <- registerHistogram \"example_round_trip_latency_ms\" mempty [10, 20..100]\n>\n>     liftIO $ inc connectCounter -- increment a counter\n>\n>     -- [...] pass metric handles to the rest of the app\n>\n>     serveMetricsT 8080 [\"metrics\"] -- http://localhost:8080/metric server\n>\n\n[Advanced Usage]\n\nA `Registry` and `StateT`-based `RegistryT` are available for unit testing or generating lists\nof `[IO a]` actions that can be `sequenced` and returned from pure code to be applied.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
    };
  }