{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snaplet-wordpress";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson";
        homepage = "https://github.com/dbp/snaplet-wordpress";
        url = "";
        synopsis = "A snaplet that communicates with wordpress over its api.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "snaplet-wordpress" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.data-default
            hsPkgs.hedis
            hsPkgs.heist
            hsPkgs.map-syntax
            hsPkgs.lens
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.snaplet-redis
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.wreq
            hsPkgs.configurator
            hsPkgs.time
            hsPkgs.xmlhtml
            hsPkgs.network
            hsPkgs.async
            hsPkgs.hspec
            hsPkgs.hspec-snap
            hsPkgs.mtl
            hsPkgs.either
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.attoparsec
          ];
        };
        tests = {
          "test-snaplet-wordpress" = {
            depends  = [
              hsPkgs.base
              hsPkgs.heist
              hsPkgs.hspec-snap
              hsPkgs.hspec
              hsPkgs.snap
              hsPkgs.snaplet-wordpress
              hsPkgs.blaze-builder
              hsPkgs.snaplet-redis
              hsPkgs.lens
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.xmlhtml
              hsPkgs.mtl
              hsPkgs.either
              hsPkgs.unordered-containers
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.hedis
            ];
          };
        };
      };
    }