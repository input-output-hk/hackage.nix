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
      specVersion = "1.12";
      identifier = {
        name = "eventsource-geteventstore-store";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://gitlab.com/YoEight/eventsource-api-hs";
      url = "";
      synopsis = "GetEventStore store implementation.";
      description = "GetEventStore store implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.eventsource-api)
          (hsPkgs.eventsource-store-specs)
          (hsPkgs.eventstore)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.streaming)
          (hsPkgs.string-conversions)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "geteventstore-store-test-suite" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.eventsource-api)
            (hsPkgs.eventsource-geteventstore-store)
            (hsPkgs.eventsource-store-specs)
            (hsPkgs.eventstore)
            (hsPkgs.lifted-async)
            (hsPkgs.lifted-base)
            (hsPkgs.mtl)
            (hsPkgs.protolude)
            (hsPkgs.streaming)
            (hsPkgs.string-conversions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.transformers-base)
          ];
        };
      };
    };
  }