{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      fail-on-warning = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nats-client";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 João Neves";
      maintainer = "sevenjp@gmail.com";
      author = "João Neves";
      homepage = "https://bitbucket.org/jpgneves/nats-client#readme";
      url = "";
      synopsis = "Another Haskell client for NATS (https://nats.io)";
      description = "A simple client library for the NATS messaging protocol";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.hslogger)
          (hsPkgs.monad-control)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.resource-pool)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "nats-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.nats-client)
            (hsPkgs.network)
          ];
        };
      };
      tests = {
        "nats-client-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.nats-client)
            (hsPkgs.test-framework)
            (hsPkgs.hedgehog)
          ];
        };
      };
      benchmarks = {
        "bench-nats-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.time)
          ];
        };
      };
    };
  }