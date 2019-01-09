{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "metricsd-client"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 - 2014 Jan Vornberger";
      maintainer = "Jan Vornberger <jan@uos.de>";
      author = "Jan Vornberger <jan@uos.de>";
      homepage = "";
      url = "";
      synopsis = "Client for the metrics aggregator Metricsd";
      description = "A client for the metrics aggregator Metricsd (a replacement for Statsd).";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.network) ]; };
      };
    }