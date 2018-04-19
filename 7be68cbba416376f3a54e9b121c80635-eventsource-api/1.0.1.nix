{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventsource-api";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "https://github.com/YoEight/eventsource-api#readme";
        url = "";
        synopsis = "Provides a eventsourcing high level API.";
        description = "Please read README.md.";
        buildType = "Simple";
      };
      components = {
        eventsource-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.uuid
            hsPkgs.aeson
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.unordered-containers
          ];
        };
      };
    }