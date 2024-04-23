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
      identifier = { name = "network-metrics"; version = "0.1.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Brendan Hay <brendan@soundcloud.com>";
      author = "Brendan Hay <brendan@soundcloud.com>";
      homepage = "http://github.com/brendanhay/network-metrics";
      url = "";
      synopsis = "Send metrics to Ganglia, Graphite, and statsd.";
      description = "\nSend metrics directly from Haskell various monitoring and metrics services.\n\nSupported services are Ganglia, Graphite, and statsd.\n\nThese modules are intended to be imported qualified, to avoid name\nclashes with other modules, e.g.\n\n> import qualified Network.Metrics.Ganglia  as A\n> import qualified Network.Metrics.Graphite as B\n> import qualified Network.Metrics.Statsd   as C";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "gmetric-haskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
      };
    };
  }