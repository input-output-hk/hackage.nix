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
    flags = { manual = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "datadog-tracing"; version = "1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Symbiont.io";
      maintainer = "Sam Halliday";
      author = "Sam Halliday";
      homepage = "";
      url = "";
      synopsis = "Datadog tracing client and mock agent.";
      description = "An HTTP client to publish tracing to\na [datadog agent](https://docs.datadoghq.com/agent/?tab=agentv6).\n\nIn addition, an HTTP server is provided that can be used in place of\nthe official agent, that does not communicate with upstream datadog\nservers, allowing replay of all data from a `GET /dump` endpoint,\ncompatible with `jaeger-flamegraph`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."ffunctor" or (buildDepError "ffunctor"))
          (hsPkgs."generic-random" or (buildDepError "generic-random"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."msgpack" or (buildDepError "msgpack"))
          (hsPkgs."refined" or (buildDepError "refined"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-text" or (buildDepError "quickcheck-text"))
          ];
        };
      exes = {
        "datadog-agent" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."datadog-tracing" or (buildDepError "datadog-tracing"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        "manual-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."servant" or (buildDepError "servant"))
            ] ++ (pkgs.lib).optionals (flags.manual) [
            (hsPkgs."datadog-tracing" or (buildDepError "datadog-tracing"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."datadog-tracing" or (buildDepError "datadog-tracing"))
            (hsPkgs."hspec-golden-aeson" or (buildDepError "hspec-golden-aeson"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or (buildToolDepError "tasty-discover")))
            ];
          };
        };
      };
    }