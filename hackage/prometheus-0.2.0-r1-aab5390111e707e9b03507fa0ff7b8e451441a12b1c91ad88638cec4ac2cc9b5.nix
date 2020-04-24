{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prometheus"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "http://github.com/LukeHoersten/prometheus#readme";
      url = "";
      synopsis = "Prometheus Haskell Client";
      description = "[Prometheus Haskell Client]\n\nA simple and modern, type safe, idiomatic Haskell client for\n<http://prometheus.io Prometheus> monitoring. Specifically there is no\nuse of unsafe IO or manual ByteString construction from lists of\nbytes. Batteries-included web server.\n\n[Usage Example]\n\n> module Example where\n>\n> import           System.Metrics.Prometheus.GlobalRegistry\n> import           System.Metrics.Prometheus.Http\n> import           System.Metrics.Prometheus.Metric.Counter (inc)\n> import           System.Metrics.Prometheus.MetricId\n>\n>\n> main :: IO ()\n> main = do\n>     globalRegistry <- new\n>\n>     -- Labels can be defined as lists or added to an empty label set\n>     connectSuccessGauge <- registerGauge \"example_connections\" (fromList [(\"login\", \"success\")]) globalRegistry\n>     connectFailureGauge <- registerGauge \"example_connections\" (addLabel \"login\" \"failure\" mempty) globalRegistry\n>     connectCounter <- registerCounter \"example_connection_total\" mempty globalRegistry\n>     latencyHistogram <- registerHistogram \"example_round_trip_latency_ms\" mempty [10, 20..100] globalRegistry\n>\n>     inc connectCounter -- increment a counter\n>\n>     -- [...] pass metric handles to the rest of the app\n>\n>     serveHttpTextMetrics 8080 globalRegistry -- http://localhost:8080/metric server\n>\n\n[Advanced Usage]\n\nA `Registry` and `StateT`-based `RegistryT` are available for unit testing or generating lists\nof `[IO a]` actions that can be `sequenced` and returned from pure code to be applied.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }