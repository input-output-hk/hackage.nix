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
        name = "eventsource-stub-store";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://gitlab.com/YoEight/eventsource-api-hs";
      url = "";
      synopsis = "An in-memory stub store implementation.";
      description = "An in-memory stub store implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.eventsource-api)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.streaming)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "eventsource-stub-store-test-suite" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.eventsource-api)
            (hsPkgs.eventsource-store-specs)
            (hsPkgs.eventsource-stub-store)
            (hsPkgs.protolude)
            (hsPkgs.streaming)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
    };
  }