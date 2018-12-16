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
        name = "ghc-trace-events";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/ghc-trace-events";
      url = "";
      synopsis = "Faster replacements for traceEvent and traceEventMarker";
      description = "This library provies 3 modules:\n\n[\"Debug.Trace.String\"] Drop-in replacements for the event tracing functions in\n\"Debug.Trace\".\n[\"Debug.Trace.ByteString\"] 'Data.ByteString.ByteString' variants of the event\ntracing functions in \"Debug.Trace\".\n[\"Debug.Trace.Text\"] 'Data.Text.Text' variants of the event tracing functions\nin \"Debug.Trace\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      benchmarks = {
        "bench-trace-enabled" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.ghc-trace-events)
          ];
        };
        "bench-trace-disabled" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.ghc-trace-events)
          ];
        };
      };
    };
  }