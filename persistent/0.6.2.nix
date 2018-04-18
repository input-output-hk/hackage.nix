{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "persistent";
          version = "0.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/persistent";
        url = "";
        synopsis = "Type-safe, non-relational, multi-backend persistence.";
        description = "This library provides just the general interface and helper functions. You must use a specific backend in order to make this useful.";
        buildType = "Simple";
      };
      components = {
        persistent = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.enumerator
            hsPkgs.monad-control
            hsPkgs.pool
            hsPkgs.blaze-html
            hsPkgs.path-pieces
            hsPkgs.mtl
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.file-location
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.HDBC-postgresql
              hsPkgs.HDBC
              hsPkgs.mongoDB
              hsPkgs.bson
              hsPkgs.cereal
              hsPkgs.network
              hsPkgs.compact-string-fix
              hsPkgs.persistent
              hsPkgs.path-pieces
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.monad-control
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.enumerator
              hsPkgs.time
              hsPkgs.random
              hsPkgs.QuickCheck
            ];
            libs = [ pkgs.sqlite3 ];
          };
        };
      };
    }