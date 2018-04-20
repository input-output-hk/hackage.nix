{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "superevent";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/superevent#readme";
        url = "";
        synopsis = "A simple opinionated event store implementation";
        description = "A simple opinionated event store implementation";
        buildType = "Simple";
      };
      components = {
        superevent = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.hashable
            hsPkgs.hasql
            hsPkgs.hasql-migration
            hsPkgs.hasql-pool
            hsPkgs.hasql-transaction
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.stm
            hsPkgs.string-qq
            hsPkgs.text
            hsPkgs.time
            hsPkgs.timespan
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.uuid
            hsPkgs.vector
          ];
        };
        tests = {
          superevent-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.stm
              hsPkgs.superevent
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.uuid
              hsPkgs.vector
            ];
          };
        };
      };
    }