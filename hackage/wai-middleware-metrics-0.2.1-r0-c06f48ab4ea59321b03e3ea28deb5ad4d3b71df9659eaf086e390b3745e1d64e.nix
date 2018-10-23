{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-metrics";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "arnaudpourseb@gmail.com";
      author = "Sebastian de Bellefon";
      homepage = "https://github.com/Helkafen/wai-middleware-metrics";
      url = "";
      synopsis = "A WAI middleware to collect EKG request metrics";
      description = "This WAI middleware counts the number of requests, the number of server errors (http status >= 500) and keeps a latency distribution.\n\nIt can be added to any WAI-based webserver, such as Yesod, Scotty, Spock and Servant.\n\nThe counters are EKG Counters from ekg-core. <https://ocharles.org.uk/blog/posts/2012-12-11-24-day-of-hackage-ekg.html>";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-metrics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.ekg-core)
          (hsPkgs.http-types)
          (hsPkgs.time)
        ];
      };
      tests = {
        "metrics-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wai)
            (hsPkgs.ekg-core)
            (hsPkgs.wai-middleware-metrics)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.scotty)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.wai-extra)
            (hsPkgs.http-types)
            (hsPkgs.time)
          ];
        };
      };
      benchmarks = {
        "metrics-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.wai)
            (hsPkgs.wai-middleware-metrics)
            (hsPkgs.wai-extra)
            (hsPkgs.scotty)
            (hsPkgs.bytestring)
            (hsPkgs.ekg-core)
            (hsPkgs.http-types)
            (hsPkgs.time)
          ];
        };
      };
    };
  }