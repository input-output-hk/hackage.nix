{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { manual = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "datadog-tracing"; version = "1.3.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."data-msgpack" or (errorHandler.buildDepError "data-msgpack"))
          (hsPkgs."ffunctor" or (errorHandler.buildDepError "ffunctor"))
          (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
          ];
        buildable = true;
        };
      exes = {
        "datadog-agent" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."datadog-tracing" or (errorHandler.buildDepError "datadog-tracing"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        "manual-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            ] ++ (pkgs.lib).optionals (flags.manual) [
            (hsPkgs."datadog-tracing" or (errorHandler.buildDepError "datadog-tracing"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            ];
          buildable = if flags.manual then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."datadog-tracing" or (errorHandler.buildDepError "datadog-tracing"))
            (hsPkgs."hspec-golden-aeson" or (errorHandler.buildDepError "hspec-golden-aeson"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }