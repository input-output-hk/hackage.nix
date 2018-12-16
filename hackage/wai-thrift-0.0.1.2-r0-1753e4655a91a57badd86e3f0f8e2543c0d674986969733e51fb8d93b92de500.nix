{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-thrift";
        version = "0.0.1.2";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.thrift)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.http-types)
        ];
      };
    };
  }