{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-client";
          version = "0.2.3.1";
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
            hsPkgs.aeson
            hsPkgs.aeson-utils
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.exception-transformers
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.hxt
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.hxt-pickle-utils
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