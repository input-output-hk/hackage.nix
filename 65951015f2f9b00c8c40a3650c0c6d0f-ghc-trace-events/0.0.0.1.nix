{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-trace-events";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/ghc-trace-events";
      url = "";
      synopsis = "Faster replacements for traceEvent and traceMarker";
      description = "This library provies 3 modules:\n\n[\"Debug.Trace.String\"] Drop-in replacements for the event tracing functions in\n\"Debug.Trace\".\n[\"Debug.Trace.ByteString\"] 'Data.ByteString.ByteString' variants of the event\ntracing functions in \"Debug.Trace\".\n[\"Debug.Trace.Text\"] 'Data.Text.Text' variants of the event tracing functions\nin \"Debug.Trace\".\n\nUnlike the tracing functions in base, all the tracing functions in this\npackage don't evaluate the input if user event logging (the @-lu@ option) is\ndisabled.";
      buildType = "Simple";
    };
    components = {
      "ghc-trace-events" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      benchmarks = {
        "bench-trace-enabled" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.ghc-trace-events)
          ];
        };
        "bench-trace-disabled" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.ghc-trace-events)
          ];
        };
      };
    };
  }