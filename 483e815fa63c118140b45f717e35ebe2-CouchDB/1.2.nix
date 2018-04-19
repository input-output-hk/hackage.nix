{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "CouchDB";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008-2012.";
        maintainer = "";
        author = "see the AUTHORS file";
        homepage = "http://github.com/arjunguha/haskell-couchdb/";
        url = "";
        synopsis = "CouchDB interface";
        description = "";
        buildType = "Simple";
      };
      components = {
        CouchDB = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.json
            hsPkgs.utf8-string
            hsPkgs.bytestring
          ];
        };
        tests = {
          test-couchdb = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.json
              hsPkgs.utf8-string
              hsPkgs.HUnit
              hsPkgs.bytestring
            ];
          };
        };
      };
    }