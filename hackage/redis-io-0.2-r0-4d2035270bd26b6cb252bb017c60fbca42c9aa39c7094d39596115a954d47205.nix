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
        name = "redis-io";
        version = "0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://github.com/twittner/redis-io/";
      url = "";
      synopsis = "Yet another redis client.";
      description = "Yet another redis client.";
      buildType = "Simple";
    };
    components = {
      "redis-io" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.auto-update)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.operational)
          (hsPkgs.pipes)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.pipes-parse)
          (hsPkgs.redis-resp)
          (hsPkgs.resource-pool)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.tinylog)
        ];
      };
      tests = {
        "redis-io-tests" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-conversion)
            (hsPkgs.containers)
            (hsPkgs.redis-io)
            (hsPkgs.redis-resp)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tinylog)
            (hsPkgs.transformers)
          ];
        };
      };
      benchmarks = {
        "redis-io-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.hedis)
            (hsPkgs.redis-io)
            (hsPkgs.redis-resp)
            (hsPkgs.tinylog)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }