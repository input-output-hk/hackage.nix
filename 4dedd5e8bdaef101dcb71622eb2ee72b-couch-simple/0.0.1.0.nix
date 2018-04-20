{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "couch-simple";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015, Michael Alan Dorman";
        maintainer = "mdorman@jaunder.io";
        author = "Michael Alan Dorman";
        homepage = "https://github.com/mdorman/couch-simple";
        url = "";
        synopsis = "A modern, lightweight, complete client for CouchDB";
        description = "Based on http-client, with intended extensions for streaming through Conduit and other libraries.";
        buildType = "Custom";
      };
      components = {
        couch-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.integer-gmp
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.uuid
            hsPkgs.vector
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.bytestring-builder;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.couch-simple
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.hjsonschema
              hsPkgs.hlint
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.random
              hsPkgs.tasty
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.uuid
            ];
          };
        };
      };
    }