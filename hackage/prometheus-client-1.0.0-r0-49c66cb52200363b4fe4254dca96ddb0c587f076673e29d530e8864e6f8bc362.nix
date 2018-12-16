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
        version = "1.0.0";
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
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.utf8-string)
          (hsPkgs.exceptions)
          (hsPkgs.text)
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
            (hsPkgs.clock)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.random-shuffle)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.utf8-string)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.text)
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
            (hsPkgs.text)
          ];
        };
      };
    };
  }