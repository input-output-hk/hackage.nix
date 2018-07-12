{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-thrift";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "yogesh.sajanikar@yahoo.com";
        author = "Yogesh Sajanikar";
        homepage = "";
        url = "";
        synopsis = "Thrift transport layer for Wai";
        description = "Implements a read-only transport layer for Wai\nRequest, and write-only transport layer for Wai\nstreaming body.";
        buildType = "Simple";
      };
      components = {
        "wai-thrift" = {
          depends  = [
            hsPkgs.base
            hsPkgs.thrift
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.stm
            hsPkgs.blaze-builder
            hsPkgs.http-types
          ];
        };
      };
    }