{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.servant)
          (hsPkgs.ffunctor)
          (hsPkgs.generic-random)
          (hsPkgs.http-media)
          (hsPkgs.msgpack)
          (hsPkgs.refined)
          (hsPkgs.prettyprinter)
          (hsPkgs.servant-client)
          (hsPkgs.scientific)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-text)
          ];
        };
      exes = {
        "datadog-agent" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.servant)
            (hsPkgs.datadog-tracing)
            (hsPkgs.data-default)
            (hsPkgs.servant-server)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            ];
          };
        "manual-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.servant)
            ] ++ (pkgs.lib).optionals (flags.manual) [
            (hsPkgs.datadog-tracing)
            (hsPkgs.binary)
            (hsPkgs.http-client)
            (hsPkgs.servant-client)
            (hsPkgs.time)
            (hsPkgs.cryptonite)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.servant)
            (hsPkgs.datadog-tracing)
            (hsPkgs.hspec-golden-aeson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            ];
          build-tools = [ ((hsPkgs.buildPackages).tasty-discover) ];
          };
        };
      };
    }