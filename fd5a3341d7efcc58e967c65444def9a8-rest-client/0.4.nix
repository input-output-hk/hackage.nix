{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-client";
          version = "0.4";
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
        "rest-client" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson-utils
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.data-default
            hsPkgs.exception-transformers
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.hxt
            hsPkgs.hxt-pickle-utils
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.primitive
            hsPkgs.resourcet
            hsPkgs.rest-types
            hsPkgs.tostring
            hsPkgs.transformers-base
            hsPkgs.uri-encode
            hsPkgs.utf8-string
          ];
        };
      };
    }