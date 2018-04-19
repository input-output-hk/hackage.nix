{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-core";
          version = "0.30.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Rest API library.";
        description = "Rest API library.";
        buildType = "Simple";
      };
      components = {
        rest-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-utils
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.fclabels
            hsPkgs.hxt
            hsPkgs.hxt-pickle-utils
            hsPkgs.json-schema
            hsPkgs.mtl
            hsPkgs.multipart
            hsPkgs.random
            hsPkgs.rest-stringmap
            hsPkgs.rest-types
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.uri-encode
            hsPkgs.utf8-string
            hsPkgs.uuid
          ];
        };
        tests = {
          rest-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.rest-core
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }