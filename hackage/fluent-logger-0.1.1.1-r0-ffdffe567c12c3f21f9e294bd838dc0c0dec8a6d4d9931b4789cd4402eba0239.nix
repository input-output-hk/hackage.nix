{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fluent-logger";
        version = "0.1.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2012, Noriyuki OHKAWA";
      maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A structured logger for Fluentd (Haskell)";
      description = "A structured logger for Fluentd (Haskell) <http://fluentd.org/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.network-socket-options)
          (hsPkgs.time)
          (hsPkgs.msgpack)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "fluent-logger-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fluent-logger)
            (hsPkgs.network)
            (hsPkgs.msgpack)
            (hsPkgs.network-conduit)
            (hsPkgs.conduit)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
            (hsPkgs.attoparsec)
            (hsPkgs.time)
          ];
        };
      };
      benchmarks = {
        "fluent-logger-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fluent-logger)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }