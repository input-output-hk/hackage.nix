{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-core";
          version = "0.39.0.1";
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
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.errors
            hsPkgs.fclabels
            hsPkgs.hxt
            hsPkgs.hxt-pickle-utils
            hsPkgs.json-schema
            hsPkgs.mtl
            hsPkgs.mtl-compat
            hsPkgs.multipart
            hsPkgs.random
            hsPkgs.rest-stringmap
            hsPkgs.rest-types
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-compat
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
              hsPkgs.aeson
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.rest-core
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }