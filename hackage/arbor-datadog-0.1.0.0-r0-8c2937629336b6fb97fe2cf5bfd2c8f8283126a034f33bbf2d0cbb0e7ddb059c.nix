{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "arbor-datadog"; version = "0.1.0.0"; };
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
          (hsPkgs.aeson)
          (hsPkgs.auto-update)
          (hsPkgs.base)
          (hsPkgs.buffer-builder)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "datadog-api-test" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.arbor-datadog)
            (hsPkgs.base)
            (hsPkgs.generic-lens)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.resourcet)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }