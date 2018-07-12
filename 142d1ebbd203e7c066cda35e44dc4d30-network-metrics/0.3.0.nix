{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-metrics";
          version = "0.3.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay <brendan.g.hay@gmail.com>";
        homepage = "http://github.com/brendanhay/network-metrics";
        url = "";
        synopsis = "Send metrics to Ganglia, Graphite, and statsd.";
        description = "\nSend metrics directly from Haskell to various monitoring and metrics services.\n\nSupported services are Ganglia, Graphite, and statsd.\n\nPlease see <http://github.com/brendanhay/network-metrics/blob/master/README.md>\nfor further information and usage.";
        buildType = "Simple";
      };
      components = {
        "network-metrics" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.random
            hsPkgs.time
          ];
        };
      };
    }