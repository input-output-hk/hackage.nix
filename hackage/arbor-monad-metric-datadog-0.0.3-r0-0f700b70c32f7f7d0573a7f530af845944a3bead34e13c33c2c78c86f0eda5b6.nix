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
        name = "arbor-monad-metric-datadog";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/arbor-monad-metric-datadog#readme";
      url = "";
      synopsis = "Metric library backend for datadog.";
      description = "Please see the README on Github at <https://github.com/arbor/arbor-monad-metric-datadog#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.arbor-datadog)
          (hsPkgs.arbor-monad-metric)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "arbor-monad-metric-datadog-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.arbor-datadog)
            (hsPkgs.arbor-monad-metric)
            (hsPkgs.arbor-monad-metric-datadog)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.fast-logger)
            (hsPkgs.generic-lens)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.lens)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.resourcet)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }