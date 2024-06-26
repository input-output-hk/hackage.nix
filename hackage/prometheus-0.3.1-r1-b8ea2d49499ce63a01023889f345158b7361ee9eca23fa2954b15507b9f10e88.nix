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
      identifier = { name = "prometheus"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "http://github.com/LukeHoersten/prometheus#readme";
      url = "";
      synopsis = "Prometheus Haskell Client";
      description = "[Prometheus Haskell Client]\n\nA simple and modern, type safe, idiomatic Haskell client for\n<http://prometheus.io Prometheus> monitoring. Specifically there is no\nuse of unsafe IO or manual ByteString construction from lists of\nbytes. Batteries-included web server.\n\n[Usage Example]\n\n> module Example where\n>\n> import           Control.Monad.IO.Class                         (liftIO)\n> import           System.Metrics.Prometheus.Concurrent.Http      (serveHttpTextMetricsT)\n> import           System.Metrics.Prometheus.Concurrent.RegistryT\n> import           System.Metrics.Prometheus.Metric.Counter       (inc)\n> import           System.Metrics.Prometheus.MetricId\n>\n> main :: IO ()\n> main = runRegistryT $ do\n>     -- Labels can be defined as lists or added to an empty label set\n>     connectSuccessGauge <- registerGauge \"example_connections\" (fromList [(\"login\", \"success\")])\n>     connectFailureGauge <- registerGauge \"example_connections\" (addLabel \"login\" \"failure\" mempty)\n>     connectCounter <- registerCounter \"example_connection_total\" mempty\n>     latencyHistogram <- registerHistogram \"example_round_trip_latency_ms\" mempty [10, 20..100]\n>\n>     liftIO $ inc connectCounter -- increment a counter\n>\n>     -- [...] pass metric handles to the rest of the app\n>\n>     serveHttpTextMetricsT 8080 [\"metrics\"] -- http://localhost:8080/metric server\n>\n\n[Advanced Usage]\n\nA `Registry` and `StateT`-based `RegistryT` are available for unit testing or generating lists\nof `[IO a]` actions that can be `sequenced` and returned from pure code to be applied.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
    };
  }