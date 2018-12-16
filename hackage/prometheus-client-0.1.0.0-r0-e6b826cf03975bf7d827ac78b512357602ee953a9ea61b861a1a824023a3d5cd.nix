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
      specVersion = "1.10";
      identifier = {
        name = "prometheus-client";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2015 Will Coster";
      maintainer = "willcoster@gmail.com";
      author = "Will Coster";
      homepage = "https://github.com/fimad/prometheus-haskell";
      url = "";
      synopsis = "Haskell client library for http://prometheus.io.";
      description = "Haskell client library for http://prometheus.io.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.atomic-primops)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.prometheus-client)
          ];
        };
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.atomic-primops)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.random-shuffle)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.prometheus-client)
            (hsPkgs.random)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }