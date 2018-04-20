{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "avers";
          version = "0.0.17.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "Server-side implementation of the Avers storage model";
        description = "This is the server-side implementation of the Avers storage model. It is a\nHaskell library, intended to be used by your application. The library provides\nyou with everything you need to write your own Avers server. You can create and\npatch objects and collections thereof. It has builtin support for sessions,\nauthentication and managing blobs. The database is not configurable. Avers is\ncurrently hardcoded to use RethinkDB.";
        buildType = "Simple";
      };
      components = {
        avers = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.clock
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.network-uri
            hsPkgs.safe
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.MonadRandom
            hsPkgs.cryptonite
            hsPkgs.memory
            hsPkgs.inflections
            hsPkgs.resource-pool
            hsPkgs.rethinkdb-client-driver
            hsPkgs.scrypt
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.MonadRandom
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.avers
              hsPkgs.base
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.hspec
              hsPkgs.inflections
              hsPkgs.mtl
              hsPkgs.resource-pool
              hsPkgs.rethinkdb-client-driver
              hsPkgs.scrypt
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.avers
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.criterion
              hsPkgs.resource-pool
              hsPkgs.rethinkdb-client-driver
              hsPkgs.network-uri
              hsPkgs.text
            ];
          };
        };
      };
    }