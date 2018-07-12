{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventsource-store-specs";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "https://github.com/YoEight/eventsource-api#readme";
        url = "";
        synopsis = "Provides common test specification for Store implementation.";
        description = "Provides common test specification for Store implementation.";
        buildType = "Simple";
      };
      components = {
        "eventsource-store-specs" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.base
            hsPkgs.eventsource-api
            hsPkgs.mtl
            hsPkgs.tasty
            hsPkgs.tasty-hspec
            hsPkgs.text
            hsPkgs.transformers-base
            hsPkgs.uuid
          ];
        };
      };
    }