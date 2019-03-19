{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "eventstore"; version = "1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Yorick Laupa";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://gitlab.com/YoEight/eventstore-hs";
      url = "";
      synopsis = "EventStore TCP Client";
      description = "EventStore TCP Client <https://eventstore.org>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.clock)
          (hsPkgs.connection)
          (hsPkgs.containers)
          (hsPkgs.dns)
          (hsPkgs.dotnet-timespan)
          (hsPkgs.ekg-core)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.interpolate)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.machines)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.protobuf)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.safe-exceptions)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.streaming)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "eventstore-tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.connection)
            (hsPkgs.containers)
            (hsPkgs.dotnet-timespan)
            (hsPkgs.eventstore)
            (hsPkgs.exceptions)
            (hsPkgs.fast-logger)
            (hsPkgs.file-embed)
            (hsPkgs.hashable)
            (hsPkgs.lifted-async)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.mono-traversable)
            (hsPkgs.protobuf)
            (hsPkgs.safe)
            (hsPkgs.safe-exceptions)
            (hsPkgs.semigroups)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.streaming)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }