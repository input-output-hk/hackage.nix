{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-client";
          version = "0.5.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Utility library for use in generated API client libraries.";
        description = "Utility library for use in generated API client libraries.";
        buildType = "Simple";
      };
      components = {
        rest-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson-utils
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.data-default
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.hxt
            hsPkgs.hxt-pickle-utils
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.rest-types
            hsPkgs.tostring
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.transformers-compat
            hsPkgs.uri-encode
            hsPkgs.utf8-string
          ];
        };
      };
    }