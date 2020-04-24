{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-trace-events"; version = "0.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench-trace-enabled" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."ghc-trace-events" or ((hsPkgs.pkgs-errors).buildDepError "ghc-trace-events"))
            ];
          buildable = true;
          };
        "bench-trace-disabled" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."ghc-trace-events" or ((hsPkgs.pkgs-errors).buildDepError "ghc-trace-events"))
            ];
          buildable = true;
          };
        };
      };
    }