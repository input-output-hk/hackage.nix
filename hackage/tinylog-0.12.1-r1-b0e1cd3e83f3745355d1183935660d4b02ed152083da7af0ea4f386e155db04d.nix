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
        name = "tinylog";
        version = "0.12.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://github.com/twittner/tinylog/";
      url = "";
      synopsis = "Simplistic logging using fast-logger.";
      description = "Trivial logger on top of fast-logger.";
      buildType = "Simple";
    };
    components = {
      "tinylog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.auto-update)
          (hsPkgs.containers)
          (hsPkgs.double-conversion)
          (hsPkgs.fast-logger)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix-time)
        ];
      };
      benchmarks = {
        "tinylog-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.tinylog)
          ];
        };
      };
    };
  }