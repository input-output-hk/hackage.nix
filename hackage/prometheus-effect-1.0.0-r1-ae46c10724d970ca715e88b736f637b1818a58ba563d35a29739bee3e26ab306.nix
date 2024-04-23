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
      identifier = { name = "prometheus-effect"; version = "1.0.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-streams" or (errorHandler.buildDepError "http-streams"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-wai" or (errorHandler.buildDepError "streaming-wai"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-utils" or (errorHandler.buildDepError "streaming-utils"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }