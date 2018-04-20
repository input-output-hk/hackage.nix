{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventsource-api";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "https://github.com/YoEight/eventsource-api#readme";
        url = "";
        synopsis = "Provides an eventsourcing high level API.";
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