{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-thrift";
          version = "0.0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "yogesh_sajanikar@yahoo.com";
        author = "Yogesh Sajanikar";
        homepage = "https://github.com/yogeshsajanikar/wai-thrift";
        url = "";
        synopsis = "Thrift transport layer for Wai";
        description = "Implements a read-only transport layer for Wai\nRequest, and write-only transport layer for Wai\nstreaming body.";
        buildType = "Simple";
      };
      components = {
        wai-thrift = {
          depends  = [
            hsPkgs.base
            hsPkgs.thrift
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.http-types
          ];
        };
      };
    }