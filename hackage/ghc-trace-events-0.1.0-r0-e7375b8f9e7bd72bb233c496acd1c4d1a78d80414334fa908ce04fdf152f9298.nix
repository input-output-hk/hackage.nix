let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ghc-trace-events"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018-2019 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <me@maoe.name>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/ghc-trace-events";
      url = "";
      synopsis = "Faster traceEvent and traceMarker, and binary object logging for\neventlog";
      description = "ghc-trace-events provides faster traceEvent and traceMarker as well\nas arbitrary binary object logging for the eventlog framework. Unlike the\n<http://hackage.haskell.org/package/base/docs/Debug-Trace.html#g:2 eventlog tracing functions in base>,\nall the tracing functions in this library don't evaluate the input if user\nevent logging (the\n<https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/runtime_control.html#rts-flag--l%20⟨flags⟩ -lu>\nflag) is disabled, which can give a significant boost in performance. Take a\nlook at the benchmark suite for the details.\n\nThis library provies the following modules:\n\n[\"Debug.Trace.String\"] Drop-in replacements for the event tracing functions in\n\"Debug.Trace\".\n[\"Debug.Trace.ByteString\"] UTF-8 encoded 'Data.ByteString.ByteString' variants\nof the event tracing functions. It's faster than the String variants.\n[\"Debug.Trace.Text\"] 'Data.Text.Text' variants of the event tracing functions\nin \"Debug.Trace\". It's faster than the String variants.\n[\"Debug.Trace.Binary\"] Arbitary binary object logging available for GHC 8.8 or\nlater. Unlike the other tracing functions 'Debug.Trace.Binary.traceBinaryEvent'\ntakes an arbitrary 'Data.ByteString.ByteString' objects as opposed to UTF-8\nencoded strings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench-trace-enabled" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."ghc-trace-events" or (buildDepError "ghc-trace-events"))
            ];
          buildable = true;
          };
        "bench-trace-disabled" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."ghc-trace-events" or (buildDepError "ghc-trace-events"))
            ];
          buildable = true;
          };
        };
      };
    }