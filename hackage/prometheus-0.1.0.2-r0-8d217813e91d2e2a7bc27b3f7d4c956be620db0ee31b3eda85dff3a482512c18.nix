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
        name = "prometheus";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "http://github.com/LukeHoersten/prometheus#readme";
      url = "";
      synopsis = "Prometheus Haskell Client";
      description = "Idiomatic Haskell client for Prometheus.io monitoring.";
      buildType = "Simple";
    };
    components = {
      "prometheus" = {
        depends  = [
          (hsPkgs.atomic-primops)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }