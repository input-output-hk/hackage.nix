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
        name = "arbor-datadog";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/arbor-datadog";
      url = "";
      synopsis = "Datadog client for Haskell.";
      description = "Datadog client for Haskell. Supports both the HTTP API and StatsD.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.network)
          (hsPkgs.resourcet)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.auto-update)
          (hsPkgs.buffer-builder)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "datadog-api-test" = {
          depends = [
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.resourcet)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.arbor-datadog)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }