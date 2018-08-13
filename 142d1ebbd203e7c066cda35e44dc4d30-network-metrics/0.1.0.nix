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
        name = "network-metrics";
        version = "0.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Brendan Hay <brendan@soundcloud.com>";
      author = "Brendan Hay <brendan@soundcloud.com>";
      homepage = "http://github.com/brendanhay/network-metrics";
      url = "";
      synopsis = "Send metrics to Ganglia, Graphite, and statsd.";
      description = "\nSend metrics directly from Haskell various monitoring and metrics services.\n\nSupported services are Ganglia, Graphite, and statsd.\n\nThese modules are intended to be imported qualified, to avoid name\nclashes with other module, e.g.\n\n> import qualified Network.Metrics.Ganglia  as A\n> import qualified Network.Metrics.Graphite as B\n> import qualified Network.Metrics.Statsd   as C";
      buildType = "Simple";
    };
    components = {
      "network-metrics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.random)
          (hsPkgs.time)
        ];
      };
      exes = {
        "gmetric-haskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.random)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }