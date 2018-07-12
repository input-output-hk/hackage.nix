{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.4";
        identifier = {
          name = "CouchDB";
          version = "0.8.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008 Arjun Guha and Brendan Hickey";
        maintainer = "Arjun Guha <arjun@cs.brown.edu>";
        author = "Arjun Guha, Brendan Hickey";
        homepage = "http://github.com/arjunguha/haskell-couchdb/";
        url = "";
        synopsis = "CouchDB interface";
        description = "";
        buildType = "Custom";
      };
      components = {
        "CouchDB" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.json
          ];
        };
      };
    }