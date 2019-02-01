{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "instana-haskell-trace-sdk"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Instana, Inc.";
      maintainer = "bastian.krol@instana.com";
      author = "Bastian Krol";
      homepage = "https://www.instana.com/";
      url = "";
      synopsis = "SDK for adding custom Instana tracing support to Haskell applications.";
      description = "Please also see the README on Github at <https://github.com/instana/haskell-trace-sdk#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-extra)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.ekg-core)
          (hsPkgs.exceptions)
          (hsPkgs.hslogger)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.retry)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.sysinfo)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          ];
        };
      exes = {
        "instana-haskell-example-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hslogger)
            (hsPkgs.instana-haskell-trace-sdk)
            ];
          };
        "instana-haskell-agent-stub" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.hslogger)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        "instana-haskell-test-wai-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.hslogger)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.instana-haskell-trace-sdk)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      tests = {
        "instana-haskell-trace-sdk-unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.aeson-extra)
            (hsPkgs.directory)
            (hsPkgs.ekg-core)
            (hsPkgs.HUnit)
            (hsPkgs.hslogger)
            (hsPkgs.random)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "instana-haskell-trace-sdk-integration-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.hslogger)
            (hsPkgs.HUnit)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.instana-haskell-trace-sdk)
            (hsPkgs.process)
            (hsPkgs.retry)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }